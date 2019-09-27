use std::collections::HashMap;
use std::env;
use std::fs;
use std::path::Path;

use bitcoincore_rpc::{Auth, Client};
use url::Url;

use crate::errors::{Error, OptionExt};
use hyper::client::Client as HyperClient;
use hyper_socks::Socks5HttpConnector;
use jsonrpc::client::Client as RpcClient;

#[derive(Debug, Serialize)]
pub struct RpcConfig {
    pub url: String,
    pub cred: Option<(String, String)>, // (username, password)
    pub cookie: Option<String>,
    pub socks5: Option<String>,
}

#[derive(Debug, Serialize)]
pub struct Network {
    name: String,
    network: String,

    bech32_prefix: String,
    p2pkh_version: u32,
    p2sh_version: u32,

    pub development: bool,
    pub liquid: bool,
    pub mainnet: bool,

    tx_explorer_url: String,
    address_explorer_url: String,

    // unimplemented
    default_peers: Vec<String>,
    service_chain_code: String,
    service_pubkey: String,
    wamp_onion_url: String,
    wamp_url: String,
    wamp_cert_pins: Vec<String>,
    wamp_cert_roots: Vec<String>,
}

lazy_static! {
    static ref NETWORKS: HashMap<String, Network> = {
        let mut networks = HashMap::new();

        let rpc_url = env::var("BITCOIND_URL")
            .ok()
            .unwrap_or_else(|| "http://127.0.0.1:18443".to_string());

        let rpc_cookie = env::var("BITCOIND_DIR")
            .ok()
            .map(|p| Path::new(&p).join(".cookie").to_string_lossy().into_owned());

        networks.insert(
            "regtest-cookie".to_string(),
            Network {
                name: "Regtest".to_string(),
                network: "regtest".to_string(),
                tx_explorer_url: "https://blockstream.info/tx/".to_string(),
                address_explorer_url: "https://blockstream.info/address/".to_string(),

                bech32_prefix: "bcrt".to_string(),
                p2pkh_version: 111,
                p2sh_version: 196,

                development: true, // TODO
                liquid: false,
                mainnet: false,

                default_peers: vec![],
                service_chain_code: "".to_string(),
                service_pubkey: "".to_string(),
                wamp_onion_url: "".to_string(),
                wamp_url: "".to_string(),
                wamp_cert_pins: vec![],
                wamp_cert_roots: vec![],
            },
        );

        networks.insert(
            "elementsregtest-cookie".to_string(),
            Network {
                name: "Elements Regtest".to_string(),
                network: "elementsregtest".to_string(),
                tx_explorer_url: "https://blockstream.info/tx/".to_string(),
                address_explorer_url: "https://blockstream.info/address/".to_string(),

                bech32_prefix: "ert".to_string(),
                p2pkh_version: 235,
                p2sh_version: 75,

                development: true, // TODO
                liquid: true,
                mainnet: false,

                default_peers: vec![],
                service_chain_code: "".to_string(),
                service_pubkey: "".to_string(),
                wamp_onion_url: "".to_string(),
                wamp_url: "".to_string(),
                wamp_cert_pins: vec![],
                wamp_cert_roots: vec![],
            },
        );

        networks.insert(
            "mainnet".to_string(),
            Network {
                name: "Regtest LAN".to_string(),
                network: "mainnet".to_string(),
                tx_explorer_url: "https://blockstream.info/tx/".to_string(),
                address_explorer_url: "https://blockstream.info/address/".to_string(),

                bech32_prefix: "tb".to_string(),
                p2pkh_version: 111,
                p2sh_version: 196,

                development: true, // TODO
                liquid: false,
                mainnet: false,

                default_peers: vec![],
                service_chain_code: "".to_string(),
                service_pubkey: "".to_string(),
                wamp_onion_url: "".to_string(),
                wamp_url: "".to_string(),
                wamp_cert_pins: vec![],
                wamp_cert_roots: vec![],
            },
        );

        networks
    };
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum ElementsNetwork {
    Liquid,
    ElementsRegtest,
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum NetworkId {
    Elements(ElementsNetwork),
    Bitcoin(bitcoin::Network),
}

fn make_socks5_client(url: &str) -> Option<HyperClient> {
    let connector = Socks5HttpConnector::new(url).ok();
    connector.map(hyper::Client::with_connector)
}

impl Network {
    pub fn list() -> &'static HashMap<String, Network> {
        &NETWORKS
    }

    pub fn get(id: &str) -> Option<&'static Network> {
        NETWORKS.get(id)
    }

    pub fn connect(rpc: &RpcConfig, wallet: Option<&str>) -> Result<Client, Error> {
        let cred = rpc
            .cred
            .clone()
            .or_else(|| rpc.cookie.as_ref().and_then(|path| read_cookie(path).ok()))
            .or_err("missing rpc credentials")?;

        let (rpc_user, rpc_pass) = cred;

        let mut rpc_url = Url::parse(&rpc.url)?;
        if let Some(wallet) = wallet {
            rpc_url = rpc_url.join(&format!("/wallet/{}", wallet))?;
        }

        if let Some(socks5client) = rpc.socks5.and_then(make_socks5_client) {
            let jsonrpc = RpcClient::with_client(
                rpc_url.to_string(),
                Some(rpc_user),
                Some(rpc_pass),
                socks5client,
            );
            Ok(Client::from_jsonrpc(jsonrpc))
        } else {
            Client::new(rpc_url.to_string(), Auth::UserPass(rpc_user, rpc_pass))
                .map_err(|e| e.into())
        }
    }

    pub fn id(&self) -> NetworkId {
        match (self.liquid, self.mainnet, self.development) {
            (true, true, false) => NetworkId::Elements(ElementsNetwork::Liquid),
            (true, false, true) => NetworkId::Elements(ElementsNetwork::ElementsRegtest),
            (_, true, false) => NetworkId::Bitcoin(bitcoin::Network::Bitcoin),
            (_, false, true) => NetworkId::Bitcoin(bitcoin::Network::Regtest),
            (l, m, d) => panic!("inconsistent network parameters: lq={}, main={}, dev={}", l, m, d),
        }
    }
}

fn read_cookie(path: &str) -> Result<(String, String), Error> {
    let contents = fs::read_to_string(path)?;
    let parts: Vec<&str> = contents.split(':').collect();
    Ok((parts[0].to_string(), parts[1].to_string()))
}
