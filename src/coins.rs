pub mod btc;

#[cfg(feature = "liquid")]
pub mod liq;

#[allow(dead_code)]
#[inline]
fn no_support(coin: &'static str) {
    panic!(
        "No support for coin '{}' is available. \
         Please compile with the required features.",
        coin
    )
}

#[cfg(not(feature = "liquid"))]
pub mod liq {
    use bitcoincore_rpc::Client as RpcClient;
    use serde_json::Value;

    use super::no_support;
    use crate::errors::Error;
    use crate::network::ElementsNetwork;

    pub fn tx_props(raw_tx: &[u8]) -> Result<Value, Error> {
        no_support("liquid")
    }

    pub fn create_transaction(_: &RpcClient, _: &Value) -> Result<Vec<u8>, Error> {
        no_support("liquid")
    }

    pub fn sign_transaction<G>(
        _: &RpcClient,
        _: ElementsNetwork,
        _: &Value,
        _: &str,
        _: G,
    ) -> Result<Vec<u8>, Error>
    where
        G: Fn(&bip32::Fingerprint, &bip32::ChildNumber) -> Result<secp256k1::SecretKey, Error>,
    {
        no_support("liquid")
    }
}
