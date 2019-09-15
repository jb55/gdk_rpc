{ gdk_rpc_crate, target, stdenv }:
{
  "argon2rs 0.2.5 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "argon2rs";
      version = "0.2.5";
      edition = "2015";
      sha256 = "1byl9b3wwyrarn8qack21v5fi2qsnn3y5clvikk2apskhmnih1rw";
      authors = [
        "bryant <bryant@defrag.in>"
      ];
      dependencies = {
        "blake2-rfc" = "blake2-rfc 0.2.18 (registry+https://github.com/rust-lang/crates.io-index)";
        "scoped_threadpool" = "scoped_threadpool 0.1.9 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "simd" = [ "blake2-rfc/simd_asm" ];
      };
    };
  "arrayvec 0.4.11 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "arrayvec";
      version = "0.4.11";
      edition = "2015";
      sha256 = "1bd08rakkyr9jlf538cs80s3ly464ni3afr63zlw860ndar1zfmv";
      authors = [
        "bluss"
      ];
      dependencies = {
        "nodrop" = {
          packageId = "nodrop 0.1.13 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
        };
      };
      features = {
        "default" = [ "std" ];
        "serde-1" = [ "serde" ];
      };
    };
  "autocfg 0.1.5 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "autocfg";
      version = "0.1.5";
      edition = "2015";
      sha256 = "1f3bj604fyr4xh08r357hs3hpdzapiqgccvmj1jpi953ffqrp09a";
      authors = [
        "Josh Stone <cuviper@gmail.com>"
      ];
      features = {
      };
    };
  "backtrace 0.3.33 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "backtrace";
      version = "0.3.33";
      edition = "2018";
      sha256 = "1fkzblhr16hix22sdb22n41l98lrqch86zzpvralh1n83q8qjw98";
      authors = [
        "The Rust Project Developers"
      ];
      dependencies = {
        "backtrace-sys" = {
          packageId = "backtrace-sys 0.1.30 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
        };
        "cfg-if" = "cfg-if 0.1.9 (registry+https://github.com/rust-lang/crates.io-index)";
        "libc" = {
          packageId = "libc 0.2.60 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
        };
        "rustc-demangle" = "rustc-demangle 0.1.15 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "default" = [ "std" "libunwind" "libbacktrace" "dladdr" "dbghelp" ];
        "gimli-symbolize" = [ "addr2line" "findshlibs" "memmap" "goblin" ];
        "libbacktrace" = [ "backtrace-sys" ];
        "rustc-dep-of-std" = [ "backtrace-sys/rustc-dep-of-std" "cfg-if/rustc-dep-of-std" "core" "compiler_builtins" "libc/rustc-dep-of-std" "rustc-demangle/rustc-dep-of-std" ];
        "serialize-rustc" = [ "rustc-serialize" ];
        "serialize-serde" = [ "serde" ];
        "verify-winapi" = [ "winapi/dbghelp" "winapi/handleapi" "winapi/libloaderapi" "winapi/minwindef" "winapi/processthreadsapi" "winapi/winbase" "winapi/winnt" ];
      };
      resolvedDefaultFeatures = [ "backtrace-sys" "dbghelp" "default" "dladdr" "libbacktrace" "libunwind" "std" ];
    };
  "backtrace-sys 0.1.30 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "backtrace-sys";
      version = "0.1.30";
      edition = "2015";
      sha256 = "023k63xhlkm15hj2j75sqlsa28qc3f3szs1rdlnz09xzs04f42qn";
      authors = [
        "Alex Crichton <alex@alexcrichton.com>"
      ];
      dependencies = {
        "libc" = {
          packageId = "libc 0.2.60 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
        };
      };
      buildDependencies = {
        "cc" = "cc 1.0.26 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "rustc-dep-of-std" = [ "core" "compiler_builtins" ];
      };
    };
  "base64 0.9.3 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "base64";
      version = "0.9.3";
      edition = "2015";
      sha256 = "11hhz8ln4zbpn2h2gm9fbbb9j254wrd4fpmddlyah2rrnqsmmqkd";
      authors = [
        "Alice Maz <alice@alicemaz.com>"
        "Marshall Pierce <marshall@mpierce.org>"
      ];
      dependencies = {
        "byteorder" = "byteorder 1.3.2 (registry+https://github.com/rust-lang/crates.io-index)";
        "safemem" = "safemem 0.3.1 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
      };
    };
  "bech32 0.6.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "bech32";
      version = "0.6.0";
      edition = "2015";
      sha256 = "0bnlc2bg949h3my2kg0ap2l78inipnmf6dc9klxlkjr8a0bfpvr0";
      authors = [
        "Clark Moody"
      ];
      features = {
      };
    };
  "bitcoin 0.18.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "bitcoin";
      version = "0.18.0";
      edition = "2015";
      sha256 = "13fkh43riqg7fzh791pdnfsbbwq3s83snqy1i7bljbfdq6fjxpw0";
      authors = [
        "Andrew Poelstra <apoelstra@wpsoftware.net>"
      ];
      dependencies = {
        "bitcoin-bech32" = "bitcoin-bech32 0.9.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "bitcoin_hashes" = "bitcoin_hashes 0.3.2 (registry+https://github.com/rust-lang/crates.io-index)";
        "byteorder" = "byteorder 1.3.2 (registry+https://github.com/rust-lang/crates.io-index)";
        "hex" = "hex 0.3.2 (registry+https://github.com/rust-lang/crates.io-index)";
        "rand" = "rand 0.3.23 (registry+https://github.com/rust-lang/crates.io-index)";
        "secp256k1" = {
          packageId = "secp256k1 0.12.2 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "rand" ];
        };
        "serde" = {
          packageId = "serde 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
        };
        "serde_test" = {
          packageId = "serde_test 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
        };
        "strason" = {
          packageId = "strason 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
          usesDefaultFeatures = false;
        };
      };
      features = {
        "fuzztarget" = [ "secp256k1/fuzztarget" "bitcoin_hashes/fuzztarget" ];
        "serde-decimal" = [ "use-serde" "strason" ];
        "use-serde" = [ "serde" "serde_test" "bitcoin_hashes/serde" ];
      };
      resolvedDefaultFeatures = [ "serde" "serde-decimal" "serde_test" "strason" "use-serde" ];
    };
  "bitcoin-amount 0.1.4 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "bitcoin-amount";
      version = "0.1.4";
      edition = "2015";
      sha256 = "0vis2w853x8fa6gqk1wqwzc6df4yfi0zhngpxs1gd4bpqxna9z31";
      authors = [
        "Jean Pierre Dudey <jeandudey@hotmail.com>"
      ];
      dependencies = {
        "serde" = {
          packageId = "serde 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
        };
      };
      features = {
      };
      resolvedDefaultFeatures = [ "serde" ];
    };
  "bitcoin-bech32 0.9.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "bitcoin-bech32";
      version = "0.9.0";
      edition = "2015";
      sha256 = "06h37dlb2f2cvkikdpk0c83yainvw0n7ycjrlyfdq2jzg0sv8hf6";
      authors = [
        "Clark Moody"
      ];
      dependencies = {
        "bech32" = "bech32 0.6.0 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
      };
    };
  "bitcoin_hashes 0.3.2 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "bitcoin_hashes";
      version = "0.3.2";
      edition = "2015";
      sha256 = "1m73ykj8zqbv4rxl1s1c9dpnk43vadgl00yznsp1fllhgpn5wbdf";
      authors = [
        "Andrew Poelstra <apoelstra@wpsoftware.net>"
      ];
      dependencies = {
        "byteorder" = "byteorder 1.3.2 (registry+https://github.com/rust-lang/crates.io-index)";
        "serde" = {
          packageId = "serde 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
        };
      };
      features = {
      };
      resolvedDefaultFeatures = [ "default" "serde" ];
    };
  "bitcoin_hashes 0.7.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "bitcoin_hashes";
      version = "0.7.0";
      edition = "2015";
      sha256 = "094r7shrllaasa5km7mwlsigsdqm4nxwrmkg5z3649xmr0l36lll";
      authors = [
        "Andrew Poelstra <apoelstra@wpsoftware.net>"
      ];
      dependencies = {
        "byteorder" = {
          packageId = "byteorder 1.3.2 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
        };
        "serde" = {
          packageId = "serde 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
          usesDefaultFeatures = false;
        };
      };
      features = {
        "default" = [ "std" ];
        "std" = [ "byteorder/std" "serde/std" ];
      };
      resolvedDefaultFeatures = [ "default" "serde" "std" ];
    };
  "bitcoincore-rpc 0.7.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "bitcoincore-rpc";
      version = "0.7.0";
      edition = "2015";
      sha256 = "13jaagagyi26924impxz4a1dbviz1gag11664gmmnw2lp3rn2g26";
      libName = "bitcoincore_rpc";
      authors = [
        "Steven Roose <steven@stevenroose.org>"
        "Jean Pierre Dudey <jeandudey@hotmail.com>"
        "Dawid Ciężarkiewicz <dpc@dpc.pw>"
      ];
      dependencies = {
        "bitcoin" = {
          packageId = "bitcoin 0.18.0 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "serde-decimal" ];
        };
        "bitcoin-amount" = {
          packageId = "bitcoin-amount 0.1.4 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "serde" ];
        };
        "bitcoin_hashes" = "bitcoin_hashes 0.3.2 (registry+https://github.com/rust-lang/crates.io-index)";
        "bitcoincore-rpc-json" = "bitcoincore-rpc-json 0.7.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "hex" = "hex 0.3.2 (registry+https://github.com/rust-lang/crates.io-index)";
        "jsonrpc" = "jsonrpc 0.11.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "log" = "log 0.4.8 (registry+https://github.com/rust-lang/crates.io-index)";
        "num-bigint" = {
          packageId = "num-bigint 0.2.2 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "serde" ];
        };
        "secp256k1" = {
          packageId = "secp256k1 0.12.2 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "serde" ];
        };
        "serde" = "serde 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
        "serde_json" = "serde_json 1.0.40 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
      };
    };
  "bitcoincore-rpc-json 0.7.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "bitcoincore-rpc-json";
      version = "0.7.0";
      edition = "2015";
      sha256 = "08r2va91vgsfdxzw29xry0pbjr99jmv6w3nzkrjbgvhvhbqbwqiq";
      libName = "bitcoincore_rpc_json";
      authors = [
        "Steven Roose <steven@stevenroose.org>"
        "Jean Pierre Dudey <jeandudey@hotmail.com>"
        "Dawid Ciężarkiewicz <dpc@dpc.pw>"
      ];
      dependencies = {
        "bitcoin" = {
          packageId = "bitcoin 0.18.0 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "serde-decimal" ];
        };
        "bitcoin-amount" = {
          packageId = "bitcoin-amount 0.1.4 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "serde" ];
        };
        "bitcoin_hashes" = "bitcoin_hashes 0.3.2 (registry+https://github.com/rust-lang/crates.io-index)";
        "hex" = "hex 0.3.2 (registry+https://github.com/rust-lang/crates.io-index)";
        "num-bigint" = {
          packageId = "num-bigint 0.2.2 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "serde" ];
        };
        "secp256k1" = {
          packageId = "secp256k1 0.12.2 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "serde" ];
        };
        "serde" = {
          packageId = "serde 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "derive" ];
        };
        "serde_json" = "serde_json 1.0.40 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
      };
    };
  "bitflags 1.1.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "bitflags";
      version = "1.1.0";
      edition = "2015";
      sha256 = "1iwa4jrqcf4lnbwl562a3lx3r0jkh1j88b219bsqvbm4sni67dyv";
      authors = [
        "The Rust Project Developers"
      ];
      features = {
      };
      resolvedDefaultFeatures = [ "default" ];
    };
  "blake2-rfc 0.2.18 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "blake2-rfc";
      version = "0.2.18";
      edition = "2015";
      sha256 = "0pyqrik4471ljk16prs0iwb2sam39z0z6axyyjxlqxdmf4wprf0l";
      authors = [
        "Cesar Eduardo Barros <cesarb@cesarb.eti.br>"
      ];
      dependencies = {
        "arrayvec" = {
          packageId = "arrayvec 0.4.11 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
        };
        "constant_time_eq" = "constant_time_eq 0.1.3 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "default" = [ "std" ];
        "simd_asm" = [ "simd_opt" ];
        "simd_opt" = [ "simd" ];
      };
      resolvedDefaultFeatures = [ "default" "std" ];
    };
  "byteorder 1.3.2 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "byteorder";
      version = "1.3.2";
      edition = "2015";
      sha256 = "099fxwc79ncpcl8dgg9hql8gznz11a3sjs7pai0mg6w8r05khvdx";
      authors = [
        "Andrew Gallant <jamslam@gmail.com>"
      ];
      features = {
        "default" = [ "std" ];
      };
      resolvedDefaultFeatures = [ "default" "std" ];
    };
  "c2-chacha 0.2.2 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "c2-chacha";
      version = "0.2.2";
      edition = "2018";
      sha256 = "1lcfazshbiw8kdpcgphlmls0mz5j4wnvsq1diaz4b2bcvgm3r2cn";
      authors = [
        "The CryptoCorrosion Contributors"
      ];
      dependencies = {
        "lazy_static" = {
          packageId = "lazy_static 1.3.0 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
        };
        "ppv-lite86" = {
          packageId = "ppv-lite86 0.2.5 (registry+https://github.com/rust-lang/crates.io-index)";
          rename = "ppv-lite86";
        };
      };
      features = {
        "default" = [ "std" "simd" "rustcrypto_api" ];
        "rustcrypto_api" = [ "stream-cipher" "byteorder" ];
        "simd" = [ "ppv-lite86/simd" ];
        "std" = [ "lazy_static" ];
      };
      resolvedDefaultFeatures = [ "lazy_static" "simd" "std" ];
    };
  "cc 1.0.26 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "cc";
      version = "1.0.26";
      edition = "2015";
      # Hack to suppress building binaries
      crateBin = [{name = ","; path = ",";}];
      sha256 = "0q6pamwpgk9hv65vhv8s9dp5d5wb298rcg2kyzpz3y9kzw0kzhj0";
      authors = [
        "Alex Crichton <alex@alexcrichton.com>"
      ];
      features = {
        "parallel" = [ "rayon" ];
      };
    };
  "cfg-if 0.1.9 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "cfg-if";
      version = "0.1.9";
      edition = "2015";
      sha256 = "13g9p2mc5b2b5wn716fwvilzib376ycpkgk868yxfp16jzix57p7";
      authors = [
        "Alex Crichton <alex@alexcrichton.com>"
      ];
      features = {
      };
    };
  "chrono 0.4.7 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "chrono";
      version = "0.4.7";
      edition = "2015";
      sha256 = "1f5r3h2vyr8g42fncp0g55qzaq2cxkchd59sjdlda1bl7m4wxnb5";
      authors = [
        "Kang Seonghoon <public+rust@mearie.org>"
        "Brandon W Maister <quodlibetor@gmail.com>"
      ];
      dependencies = {
        "libc" = {
          packageId = "libc 0.2.60 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
        };
        "num-integer" = {
          packageId = "num-integer 0.1.41 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
        };
        "num-traits" = {
          packageId = "num-traits 0.2.8 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
        };
        "time" = {
          packageId = "time 0.1.42 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
        };
      };
      features = {
        "clock" = [ "time" ];
        "default" = [ "clock" ];
      };
      resolvedDefaultFeatures = [ "clock" "default" "time" ];
    };
  "cloudabi 0.0.3 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "cloudabi";
      version = "0.0.3";
      edition = "2015";
      sha256 = "1z9lby5sr6vslfd14d6igk03s7awf91mxpsfmsp3prxbxlk0x7h5";
      libPath = "cloudabi.rs";
      authors = [
        "Nuxi (https://nuxi.nl/) and contributors"
      ];
      dependencies = {
        "bitflags" = {
          packageId = "bitflags 1.1.0 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
        };
      };
      features = {
        "default" = [ "bitflags" ];
      };
      resolvedDefaultFeatures = [ "bitflags" "default" ];
    };
  "constant_time_eq 0.1.3 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "constant_time_eq";
      version = "0.1.3";
      edition = "2015";
      sha256 = "03qri9hjf049gwqg9q527lybpg918q6y5q4g9a5lma753nff49wd";
      authors = [
        "Cesar Eduardo Barros <cesarb@cesarb.eti.br>"
      ];
      features = {
      };
    };
  "dirs 1.0.5 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "dirs";
      version = "1.0.5";
      edition = "2015";
      sha256 = "1py68zwwrhlj5vbz9f9ansjmhc8y4gs5bpamw9ycmqz030pprwf3";
      authors = [
        "Simon Ochsenreither <simon@ochsenreither.de>"
      ];
      dependencies = {
        "libc" = {
          packageId = "libc 0.2.60 (registry+https://github.com/rust-lang/crates.io-index)";
          target = target."unix";
        };
        "redox_users" = {
          packageId = "redox_users 0.3.0 (registry+https://github.com/rust-lang/crates.io-index)";
          target = (target."os" == "redox");
        };
        "winapi" = {
          packageId = "winapi 0.3.7 (registry+https://github.com/rust-lang/crates.io-index)";
          target = target."windows";
          features = [ "knownfolders" "objbase" "shlobj" "winbase" "winerror" ];
        };
      };
      features = {
      };
    };
  "elements 0.7.1 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "elements";
      version = "0.7.1";
      edition = "2015";
      sha256 = "0fpj1sb0bl9y63ps0hfhinqvr3vdzplwvndjhac1fx8x9y0kf5c0";
      authors = [
        "Andrew Poelstra <apoelstra@blockstream.com>"
      ];
      dependencies = {
        "bech32" = "bech32 0.6.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "bitcoin" = "bitcoin 0.18.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "bitcoin_hashes" = "bitcoin_hashes 0.3.2 (registry+https://github.com/rust-lang/crates.io-index)";
        "secp256k1" = "secp256k1 0.12.2 (registry+https://github.com/rust-lang/crates.io-index)";
        "serde" = {
          packageId = "serde 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
        };
      };
      features = {
        "serde-feature" = [ "bitcoin/serde" "bitcoin_hashes/serde" "serde" ];
      };
      resolvedDefaultFeatures = [ "serde" "serde-feature" ];
    };
  "failure 0.1.5 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "failure";
      version = "0.1.5";
      edition = "2015";
      sha256 = "1msaj1c0fg12dzyf4fhxqlx1gfx41lj2smdjmkc9hkrgajk2g3kx";
      authors = [
        "Without Boats <boats@mozilla.com>"
      ];
      dependencies = {
        "backtrace" = {
          packageId = "backtrace 0.3.33 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
        };
        "failure_derive" = {
          packageId = "failure_derive 0.1.5 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
        };
      };
      features = {
        "default" = [ "std" "derive" ];
        "derive" = [ "failure_derive" ];
        "std" = [ "backtrace" ];
      };
      resolvedDefaultFeatures = [ "backtrace" "default" "derive" "failure_derive" "std" ];
    };
  "failure_derive 0.1.5 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "failure_derive";
      version = "0.1.5";
      edition = "2015";
      sha256 = "1wzk484b87r4qszcvdl2bkniv5ls4r2f2dshz7hmgiv6z4ln12g0";
      procMacro = true;
      authors = [
        "Without Boats <woboats@gmail.com>"
      ];
      dependencies = {
        "proc-macro2" = "proc-macro2 0.4.30 (registry+https://github.com/rust-lang/crates.io-index)";
        "quote" = "quote 0.6.13 (registry+https://github.com/rust-lang/crates.io-index)";
        "syn" = "syn 0.15.42 (registry+https://github.com/rust-lang/crates.io-index)";
        "synstructure" = "synstructure 0.10.2 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
      };
    };
  "fuchsia-cprng 0.1.1 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "fuchsia-cprng";
      version = "0.1.1";
      edition = "2018";
      sha256 = "07apwv9dj716yjlcj29p94vkqn5zmfh7hlrqvrjx3wzshphc95h9";
      authors = [
        "Erick Tryzelaar <etryzelaar@google.com>"
      ];
      features = {
      };
    };
  "gdk-rpc 0.1.0 (path+file:///home/jb55/dev/github/Blockstream/gdk_rpc)"
    = rec {
      crateName = "gdk-rpc";
      inherit (gdk_rpc_crate) postInstall src type;
      version = "0.1.0";
      edition = "2018";
      authors = [
        "Nadav Ivgi <nadav@shesek.info>"
      ];
      dependencies = {
        "backtrace" = "backtrace 0.3.33 (registry+https://github.com/rust-lang/crates.io-index)";
        "bitcoin" = "bitcoin 0.18.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "bitcoin_hashes" = {
          packageId = "bitcoin_hashes 0.3.2 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "serde" ];
        };
        "bitcoincore-rpc" = "bitcoincore-rpc 0.7.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "chrono" = "chrono 0.4.7 (registry+https://github.com/rust-lang/crates.io-index)";
        "dirs" = "dirs 1.0.5 (registry+https://github.com/rust-lang/crates.io-index)";
        "elements" = {
          packageId = "elements 0.7.1 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
        };
        "failure" = "failure 0.1.5 (registry+https://github.com/rust-lang/crates.io-index)";
        "hex" = "hex 0.3.2 (registry+https://github.com/rust-lang/crates.io-index)";
        "jsonrpc" = "jsonrpc 0.11.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "lazy_static" = "lazy_static 1.3.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "libc" = "libc 0.2.60 (registry+https://github.com/rust-lang/crates.io-index)";
        "liquid-rpc" = {
          packageId = "liquid-rpc 0.1.0 (git+https://github.com/stevenroose/rust-liquid-rpc.git#1ceb8a00246748c7484b8dee00b200e0441923d9)";
          optional = true;
        };
        "log" = "log 0.4.8 (registry+https://github.com/rust-lang/crates.io-index)";
        "rand" = "rand 0.7.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "secp256k1" = {
          packageId = "secp256k1 0.12.2 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "rand" ];
        };
        "serde" = "serde 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
        "serde_derive" = "serde_derive 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
        "serde_json" = "serde_json 1.0.40 (registry+https://github.com/rust-lang/crates.io-index)";
        "url" = "url 1.7.2 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "android_logger" = [ "android_log" ];
        "liquid" = [ "elements" "liquid-rpc" ];
        "stderr_logger" = [ "stderrlog" ];
      };
      resolvedDefaultFeatures = [ "default" "elements" "liquid" "liquid-rpc" ];
    };
  "getrandom 0.1.7 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "getrandom";
      version = "0.1.7";
      edition = "2018";
      sha256 = "1zc95x0x6q6dfw5lg6agcvy3pxyl8bybixm7swf6k9dc8jxcjbg9";
      authors = [
        "The Rand Project Developers"
      ];
      dependencies = {
        "cfg-if" = "cfg-if 0.1.9 (registry+https://github.com/rust-lang/crates.io-index)";
        "libc" = {
          packageId = "libc 0.2.60 (registry+https://github.com/rust-lang/crates.io-index)";
          target = (target."unix" || (target."os" == "redox") || (target."os" == "wasi"));
        };
      };
      features = {
      };
      resolvedDefaultFeatures = [ "std" ];
    };
  "hex 0.3.2 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "hex";
      version = "0.3.2";
      edition = "2015";
      sha256 = "0hs0xfb4x67y4ss9mmbjmibkwakbn3xf23i21m409bw2zqk9b6kz";
      authors = [
        "KokaKiwi <kokakiwi@kokakiwi.net>"
      ];
      features = {
      };
    };
  "httparse 1.3.4 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "httparse";
      version = "1.3.4";
      edition = "2015";
      sha256 = "0dggj4s0cq69bn63q9nqzzay5acmwl33nrbhjjsh5xys8sk2x4jw";
      authors = [
        "Sean McArthur <sean@seanmonstar.com>"
      ];
      features = {
        "default" = [ "std" ];
      };
      resolvedDefaultFeatures = [ "default" "std" ];
    };
  "hyper 0.10.16 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "hyper";
      version = "0.10.16";
      edition = "2015";
      sha256 = "078jqmrjk7gdrfqjnydhyh8vb93vr4zymid84l7x67abary947x5";
      authors = [
        "Sean McArthur <sean.monstar@gmail.com>"
        "Jonathan Reem <jonathan.reem@gmail.com>"
      ];
      dependencies = {
        "base64" = "base64 0.9.3 (registry+https://github.com/rust-lang/crates.io-index)";
        "httparse" = "httparse 1.3.4 (registry+https://github.com/rust-lang/crates.io-index)";
        "language-tags" = "language-tags 0.2.2 (registry+https://github.com/rust-lang/crates.io-index)";
        "log" = "log 0.3.9 (registry+https://github.com/rust-lang/crates.io-index)";
        "mime" = "mime 0.2.6 (registry+https://github.com/rust-lang/crates.io-index)";
        "num_cpus" = "num_cpus 1.10.1 (registry+https://github.com/rust-lang/crates.io-index)";
        "time" = "time 0.1.42 (registry+https://github.com/rust-lang/crates.io-index)";
        "traitobject" = "traitobject 0.1.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "typeable" = "typeable 0.1.2 (registry+https://github.com/rust-lang/crates.io-index)";
        "unicase" = "unicase 1.4.2 (registry+https://github.com/rust-lang/crates.io-index)";
        "url" = "url 1.7.2 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
      };
    };
  "idna 0.1.5 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "idna";
      version = "0.1.5";
      edition = "2015";
      sha256 = "1gwgl19rz5vzi67rrhamczhxy050f5ynx4ybabfapyalv7z1qmjy";
      authors = [
        "The rust-url developers"
      ];
      dependencies = {
        "matches" = "matches 0.1.8 (registry+https://github.com/rust-lang/crates.io-index)";
        "unicode-bidi" = "unicode-bidi 0.3.4 (registry+https://github.com/rust-lang/crates.io-index)";
        "unicode-normalization" = "unicode-normalization 0.1.8 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
      };
    };
  "itoa 0.4.4 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "itoa";
      version = "0.4.4";
      edition = "2015";
      sha256 = "1fqc34xzzl2spfdawxd9awhzl0fwf1y6y4i94l8bq8rfrzd90awl";
      authors = [
        "David Tolnay <dtolnay@gmail.com>"
      ];
      features = {
        "default" = [ "std" ];
      };
      resolvedDefaultFeatures = [ "default" "std" ];
    };
  "jsonrpc 0.11.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "jsonrpc";
      version = "0.11.0";
      edition = "2015";
      sha256 = "0xyv8zmlif504g3w4yk02w3naqhdw75s1a5jyg5g74bigykq4q70";
      authors = [
        "Andrew Poelstra <apoelstra@wpsoftware.net>"
      ];
      dependencies = {
        "hyper" = "hyper 0.10.16 (registry+https://github.com/rust-lang/crates.io-index)";
        "serde" = "serde 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
        "serde_derive" = "serde_derive 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
        "serde_json" = "serde_json 1.0.40 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
      };
    };
  "language-tags 0.2.2 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "language-tags";
      version = "0.2.2";
      edition = "2015";
      sha256 = "1zkrdzsqzzc7509kd7nngdwrp461glm2g09kqpzaqksp82frjdvy";
      authors = [
        "Pyfisch <pyfisch@gmail.com>"
      ];
      features = {
        "heap_size" = [ "heapsize" "heapsize_plugin" ];
      };
    };
  "lazy_static 1.3.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "lazy_static";
      version = "1.3.0";
      edition = "2015";
      sha256 = "1vv47va18ydk7dx5paz88g3jy1d3lwbx6qpxkbj8gyfv770i4b1y";
      authors = [
        "Marvin Löbel <loebel.marvin@gmail.com>"
      ];
      features = {
        "spin_no_std" = [ "spin" ];
      };
    };
  "libc 0.2.60 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "libc";
      version = "0.2.60";
      edition = "2015";
      sha256 = "1zklw10b6lwz6ldamxvdxr8gsxbqhphxhn8n5n5dndl7avafx49b";
      authors = [
        "The Rust Project Developers"
      ];
      features = {
        "default" = [ "std" ];
        "rustc-dep-of-std" = [ "align" "rustc-std-workspace-core" ];
        "use_std" = [ "std" ];
      };
      resolvedDefaultFeatures = [ "default" "std" ];
    };
  "liquid-rpc 0.1.0 (git+https://github.com/stevenroose/rust-liquid-rpc.git#1ceb8a00246748c7484b8dee00b200e0441923d9)"
    = rec {
      crateName = "liquid-rpc";
      version = "0.1.0";
      edition = "2015";
      src = builtins.fetchGit {
        url = "https://github.com/stevenroose/rust-liquid-rpc.git";
        rev = "1ceb8a00246748c7484b8dee00b200e0441923d9";
      };
      libName = "liquid_rpc";
      authors = [
        "Steven Roose <steven@stevenroose.org>"
      ];
      dependencies = {
        "bitcoin" = {
          packageId = "bitcoin 0.18.0 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "use-serde" ];
        };
        "bitcoin_hashes" = "bitcoin_hashes 0.7.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "bitcoincore-rpc" = "bitcoincore-rpc 0.7.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "elements" = {
          packageId = "elements 0.7.1 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "serde-feature" ];
        };
        "hex" = "hex 0.3.2 (registry+https://github.com/rust-lang/crates.io-index)";
        "jsonrpc" = "jsonrpc 0.11.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "liquid-rpc-json" = "liquid-rpc-json 0.1.0 (git+https://github.com/stevenroose/rust-liquid-rpc.git#1ceb8a00246748c7484b8dee00b200e0441923d9)";
        "secp256k1" = {
          packageId = "secp256k1 0.12.2 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "serde" ];
        };
        "serde" = {
          packageId = "serde 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "derive" ];
        };
        "serde_json" = "serde_json 1.0.40 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
      };
    };
  "liquid-rpc-json 0.1.0 (git+https://github.com/stevenroose/rust-liquid-rpc.git#1ceb8a00246748c7484b8dee00b200e0441923d9)"
    = rec {
      crateName = "liquid-rpc-json";
      version = "0.1.0";
      edition = "2015";
      src = builtins.fetchGit {
        url = "https://github.com/stevenroose/rust-liquid-rpc.git";
        rev = "1ceb8a00246748c7484b8dee00b200e0441923d9";
      };
      libName = "liquid_rpc_json";
      authors = [
        "Steven Roose <steven@stevenroose.org>"
      ];
      dependencies = {
        "bitcoin" = {
          packageId = "bitcoin 0.18.0 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "use-serde" ];
        };
        "bitcoin_hashes" = "bitcoin_hashes 0.7.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "bitcoincore-rpc" = "bitcoincore-rpc 0.7.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "elements" = {
          packageId = "elements 0.7.1 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "serde-feature" ];
        };
        "hex" = "hex 0.3.2 (registry+https://github.com/rust-lang/crates.io-index)";
        "secp256k1" = {
          packageId = "secp256k1 0.12.2 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "serde" ];
        };
        "serde" = {
          packageId = "serde 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "derive" ];
        };
        "serde_json" = "serde_json 1.0.40 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
      };
    };
  "log 0.3.9 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "log";
      version = "0.3.9";
      edition = "2015";
      sha256 = "19i9pwp7lhaqgzangcpw00kc3zsgcqcx84crv07xgz3v7d3kvfa2";
      authors = [
        "The Rust Project Developers"
      ];
      dependencies = {
        "log" = "log 0.4.8 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "default" = [ "use_std" ];
        "max_level_debug" = [ "log/max_level_debug" ];
        "max_level_error" = [ "log/max_level_error" ];
        "max_level_info" = [ "log/max_level_info" ];
        "max_level_off" = [ "log/max_level_off" ];
        "max_level_trace" = [ "log/max_level_trace" ];
        "max_level_warn" = [ "log/max_level_warn" ];
        "release_max_level_debug" = [ "log/release_max_level_debug" ];
        "release_max_level_error" = [ "log/release_max_level_error" ];
        "release_max_level_info" = [ "log/release_max_level_info" ];
        "release_max_level_off" = [ "log/release_max_level_off" ];
        "release_max_level_trace" = [ "log/release_max_level_trace" ];
        "release_max_level_warn" = [ "log/release_max_level_warn" ];
        "use_std" = [ "log/std" ];
      };
      resolvedDefaultFeatures = [ "default" "use_std" ];
    };
  "log 0.4.8 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "log";
      version = "0.4.8";
      edition = "2015";
      sha256 = "0wvzzzcn89dai172rrqcyz06pzldyyy0lf0w71csmn206rdpnb15";
      authors = [
        "The Rust Project Developers"
      ];
      dependencies = {
        "cfg-if" = "cfg-if 0.1.9 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "kv_unstable_sval" = [ "kv_unstable" "sval/fmt" ];
      };
      resolvedDefaultFeatures = [ "std" ];
    };
  "matches 0.1.8 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "matches";
      version = "0.1.8";
      edition = "2015";
      sha256 = "03hl636fg6xggy0a26200xs74amk3k9n0908rga2szn68agyz3cv";
      libPath = "lib.rs";
      authors = [
        "Simon Sapin <simon.sapin@exyr.org>"
      ];
      features = {
      };
    };
  "mime 0.2.6 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "mime";
      version = "0.2.6";
      edition = "2015";
      sha256 = "1skwwa0j3kqd8rm9387zgabjhp07zj99q71nzlhba4lrz9r911b3";
      authors = [
        "Sean McArthur <sean.monstar@gmail.com>"
      ];
      dependencies = {
        "log" = "log 0.3.9 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "heap_size" = [ "heapsize" ];
      };
    };
  "nodrop 0.1.13 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "nodrop";
      version = "0.1.13";
      edition = "2015";
      sha256 = "0gkfx6wihr9z0m8nbdhma5pyvbipznjpkzny2d4zkc05b0vnhinb";
      authors = [
        "bluss"
      ];
      features = {
        "default" = [ "std" ];
        "use_union" = [ "nodrop-union" ];
      };
    };
  "num-bigint 0.2.2 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "num-bigint";
      version = "0.2.2";
      edition = "2015";
      sha256 = "0alza0afrwvhiilqvjazkxv94sir14jqfi50cpv40rgjl1rk7xf6";
      authors = [
        "The Rust Project Developers"
      ];
      dependencies = {
        "num-integer" = {
          packageId = "num-integer 0.1.41 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
        };
        "num-traits" = {
          packageId = "num-traits 0.2.8 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
        };
        "serde" = {
          packageId = "serde 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
          usesDefaultFeatures = false;
          features = [ "std" ];
        };
      };
      features = {
        "default" = [ "std" ];
        "i128" = [ "num-integer/i128" "num-traits/i128" ];
        "std" = [ "num-integer/std" "num-traits/std" ];
      };
      resolvedDefaultFeatures = [ "default" "serde" "std" ];
    };
  "num-integer 0.1.41 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "num-integer";
      version = "0.1.41";
      edition = "2015";
      sha256 = "1y45nh9xlp2dra9svb1wfsy65fysm3k1w4m8jynywccq645yixid";
      authors = [
        "The Rust Project Developers"
      ];
      dependencies = {
        "num-traits" = {
          packageId = "num-traits 0.2.8 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
        };
      };
      buildDependencies = {
        "autocfg" = "autocfg 0.1.5 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "default" = [ "std" ];
        "i128" = [ "num-traits/i128" ];
        "std" = [ "num-traits/std" ];
      };
      resolvedDefaultFeatures = [ "std" ];
    };
  "num-traits 0.2.8 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "num-traits";
      version = "0.2.8";
      edition = "2015";
      sha256 = "1mnlmy35n734n9xlq0qkfbgzz33x09a1s4rfj30p1976p09b862v";
      authors = [
        "The Rust Project Developers"
      ];
      buildDependencies = {
        "autocfg" = "autocfg 0.1.5 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "default" = [ "std" ];
      };
      resolvedDefaultFeatures = [ "std" ];
    };
  "num_cpus 1.10.1 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "num_cpus";
      version = "1.10.1";
      edition = "2015";
      sha256 = "1zi5s2cbnqqb0k0kdd6gqn2x97f9bssv44430h6w28awwzppyh8i";
      authors = [
        "Sean McArthur <sean@seanmonstar.com>"
      ];
      dependencies = {
        "libc" = "libc 0.2.60 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
      };
    };
  "percent-encoding 1.0.1 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "percent-encoding";
      version = "1.0.1";
      edition = "2015";
      sha256 = "04ahrp7aw4ip7fmadb0bknybmkfav0kk0gw4ps3ydq5w6hr0ib5i";
      libPath = "lib.rs";
      authors = [
        "The rust-url developers"
      ];
      features = {
      };
    };
  "ppv-lite86 0.2.5 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "ppv-lite86";
      version = "0.2.5";
      edition = "2018";
      sha256 = "1r3bhih75vhl8v7q0flmywl7hmfg902yf3jjzracsh0jlkldij6r";
      authors = [
        "The CryptoCorrosion Contributors"
      ];
      features = {
        "default" = [ "std" "simd" ];
      };
      resolvedDefaultFeatures = [ "default" "simd" "std" ];
    };
  "proc-macro2 0.4.30 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "proc-macro2";
      version = "0.4.30";
      edition = "2015";
      sha256 = "0iifv51wrm6r4r2gghw6rray3nv53zcap355bbz1nsmbhj5s09b9";
      authors = [
        "Alex Crichton <alex@alexcrichton.com>"
      ];
      dependencies = {
        "unicode-xid" = "unicode-xid 0.1.0 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "default" = [ "proc-macro" ];
      };
      resolvedDefaultFeatures = [ "default" "proc-macro" ];
    };
  "quote 0.6.13 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "quote";
      version = "0.6.13";
      edition = "2015";
      sha256 = "1hrvsin40i4q8swrhlj9057g7nsp0lg02h8zbzmgz14av9mzv8g8";
      authors = [
        "David Tolnay <dtolnay@gmail.com>"
      ];
      dependencies = {
        "proc-macro2" = {
          packageId = "proc-macro2 0.4.30 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
        };
      };
      features = {
        "default" = [ "proc-macro" ];
        "proc-macro" = [ "proc-macro2/proc-macro" ];
      };
      resolvedDefaultFeatures = [ "default" "proc-macro" ];
    };
  "rand 0.3.23 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "rand";
      version = "0.3.23";
      edition = "2015";
      sha256 = "118rairvv46npqqx7hmkf97kkimjrry9z31z4inxcv2vn0nj1s2g";
      authors = [
        "The Rust Project Developers"
      ];
      dependencies = {
        "libc" = "libc 0.2.60 (registry+https://github.com/rust-lang/crates.io-index)";
        "rand" = "rand 0.4.6 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "nightly" = [ "i128_support" ];
      };
    };
  "rand 0.4.6 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "rand";
      version = "0.4.6";
      edition = "2015";
      sha256 = "0c3rmg5q7d6qdi7cbmg5py9alm70wd3xsg0mmcawrnl35qv37zfs";
      authors = [
        "The Rust Project Developers"
      ];
      dependencies = {
        "fuchsia-cprng" = {
          packageId = "fuchsia-cprng 0.1.1 (registry+https://github.com/rust-lang/crates.io-index)";
          target = (target."os" == "fuchsia");
        };
        "libc" = {
          packageId = "libc 0.2.60 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
          target = target."unix";
        };
        "rand_core" = {
          packageId = "rand_core 0.3.1 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
          target = (target."env" == "sgx");
        };
        "rdrand" = {
          packageId = "rdrand 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)";
          target = (target."env" == "sgx");
        };
        "winapi" = {
          packageId = "winapi 0.3.7 (registry+https://github.com/rust-lang/crates.io-index)";
          target = target."windows";
          features = [ "minwindef" "ntsecapi" "profileapi" "winnt" ];
        };
      };
      features = {
        "default" = [ "std" ];
        "nightly" = [ "i128_support" ];
        "std" = [ "libc" ];
      };
      resolvedDefaultFeatures = [ "default" "libc" "std" ];
    };
  "rand 0.7.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "rand";
      version = "0.7.0";
      edition = "2018";
      sha256 = "00nfv8p95nf985sxdfd7j23br77v47sf9hp95qjna1zsz4fyjs8v";
      authors = [
        "The Rand Project Developers"
        "The Rust Project Developers"
      ];
      dependencies = {
        "getrandom" = {
          packageId = "getrandom 0.1.7 (registry+https://github.com/rust-lang/crates.io-index)";
          rename = "getrandom_package";
          optional = true;
        };
        "libc" = {
          packageId = "libc 0.2.60 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
          target = target."unix";
        };
        "rand_chacha" = {
          packageId = "rand_chacha 0.2.1 (registry+https://github.com/rust-lang/crates.io-index)";
          target = (!(target."os" == "emscripten"));
        };
        "rand_core" = "rand_core 0.5.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "rand_hc" = {
          packageId = "rand_hc 0.2.0 (registry+https://github.com/rust-lang/crates.io-index)";
          target = (target."os" == "emscripten");
        };
      };
      features = {
        "alloc" = [ "rand_core/alloc" ];
        "default" = [ "std" ];
        "getrandom" = [ "getrandom_package" "rand_core/getrandom" ];
        "nightly" = [ "simd_support" ];
        "simd_support" = [ "packed_simd" ];
        "small_rng" = [ "rand_pcg" ];
        "std" = [ "rand_core/std" "alloc" "getrandom" ];
        "stdweb" = [ "getrandom_package/stdweb" ];
        "wasm-bindgen" = [ "getrandom_package/wasm-bindgen" ];
      };
      resolvedDefaultFeatures = [ "alloc" "default" "getrandom" "getrandom_package" "std" ];
    };
  "rand_chacha 0.2.1 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "rand_chacha";
      version = "0.2.1";
      edition = "2018";
      sha256 = "0zpp3wmxhhmripb6bywhzhx5rfwl4dfbny85hpalwdj0sncv0p0k";
      authors = [
        "The Rand Project Developers"
        "The Rust Project Developers"
        "The CryptoCorrosion Contributors"
      ];
      dependencies = {
        "c2-chacha" = {
          packageId = "c2-chacha 0.2.2 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
          features = [ "simd" ];
        };
        "rand_core" = "rand_core 0.5.0 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "default" = [ "std" "simd" ];
        "std" = [ "c2-chacha/std" ];
      };
      resolvedDefaultFeatures = [ "default" "simd" "std" ];
    };
  "rand_core 0.3.1 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "rand_core";
      version = "0.3.1";
      edition = "2015";
      sha256 = "0q0ssgpj9x5a6fda83nhmfydy7a6c0wvxm0jhncsmjx8qp8gw91m";
      authors = [
        "The Rand Project Developers"
        "The Rust Project Developers"
      ];
      dependencies = {
        "rand_core" = "rand_core 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "alloc" = [ "rand_core/alloc" ];
        "default" = [ "std" ];
        "serde1" = [ "rand_core/serde1" ];
        "std" = [ "rand_core/std" ];
      };
    };
  "rand_core 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "rand_core";
      version = "0.4.0";
      edition = "2015";
      sha256 = "0wb5iwhffibj0pnpznhv1g3i7h1fnhz64s3nz74fz6vsm3q6q3br";
      authors = [
        "The Rand Project Developers"
        "The Rust Project Developers"
      ];
      features = {
        "serde1" = [ "serde" "serde_derive" ];
        "std" = [ "alloc" ];
      };
      resolvedDefaultFeatures = [ "alloc" "std" ];
    };
  "rand_core 0.5.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "rand_core";
      version = "0.5.0";
      edition = "2015";
      sha256 = "12xakgqlbi2j0mabap4p908kisw91wjvsp69jphq2mv9hxjqq0gr";
      authors = [
        "The Rand Project Developers"
        "The Rust Project Developers"
      ];
      dependencies = {
        "getrandom" = {
          packageId = "getrandom 0.1.7 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
        };
      };
      features = {
        "serde1" = [ "serde" "serde_derive" ];
        "std" = [ "alloc" "getrandom" "getrandom/std" ];
      };
      resolvedDefaultFeatures = [ "alloc" "getrandom" "std" ];
    };
  "rand_hc 0.2.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "rand_hc";
      version = "0.2.0";
      edition = "2018";
      sha256 = "0592q9kqcna9aiyzy6vp3fadxkkbpfkmi2cnkv48zhybr0v2yf01";
      authors = [
        "The Rand Project Developers"
      ];
      dependencies = {
        "rand_core" = "rand_core 0.5.0 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
      };
    };
  "rand_os 0.1.3 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "rand_os";
      version = "0.1.3";
      edition = "2015";
      sha256 = "0ywwspizgs9g8vzn6m5ix9yg36n15119d6n792h7mk4r5vs0ww4j";
      authors = [
        "The Rand Project Developers"
      ];
      dependencies = {
        "cloudabi" = {
          packageId = "cloudabi 0.0.3 (registry+https://github.com/rust-lang/crates.io-index)";
          target = (target."os" == "cloudabi");
        };
        "fuchsia-cprng" = {
          packageId = "fuchsia-cprng 0.1.1 (registry+https://github.com/rust-lang/crates.io-index)";
          target = (target."os" == "fuchsia");
        };
        "libc" = {
          packageId = "libc 0.2.60 (registry+https://github.com/rust-lang/crates.io-index)";
          target = target."unix";
        };
        "rand_core" = {
          packageId = "rand_core 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "std" ];
        };
        "rdrand" = {
          packageId = "rdrand 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)";
          target = (target."env" == "sgx");
        };
        "winapi" = {
          packageId = "winapi 0.3.7 (registry+https://github.com/rust-lang/crates.io-index)";
          target = target."windows";
          features = [ "minwindef" "ntsecapi" "winnt" ];
        };
      };
      features = {
      };
    };
  "rdrand 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "rdrand";
      version = "0.4.0";
      edition = "2015";
      sha256 = "15hrcasn0v876wpkwab1dwbk9kvqwrb3iv4y4dibb6yxnfvzwajk";
      authors = [
        "Simonas Kazlauskas <rdrand@kazlauskas.me>"
      ];
      dependencies = {
        "rand_core" = {
          packageId = "rand_core 0.3.1 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
        };
      };
      features = {
        "default" = [ "std" ];
      };
      resolvedDefaultFeatures = [ "default" "std" ];
    };
  "redox_syscall 0.1.56 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "redox_syscall";
      version = "0.1.56";
      edition = "2015";
      sha256 = "0jcp8nd947zcy938bz09pzlmi3vyxfdzg92pjxdvvk0699vwcc26";
      libName = "syscall";
      authors = [
        "Jeremy Soller <jackpot51@gmail.com>"
      ];
      features = {
      };
    };
  "redox_users 0.3.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "redox_users";
      version = "0.3.0";
      edition = "2015";
      sha256 = "051rzqgk5hn7rf24nwgbb32zfdn8qp2kwqvdp0772ia85p737p4j";
      authors = [
        "Jose Narvaez <goyox86@gmail.com>"
        "Wesley Hershberger <mggmugginsmc@gmail.com>"
      ];
      dependencies = {
        "argon2rs" = {
          packageId = "argon2rs 0.2.5 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
        };
        "failure" = "failure 0.1.5 (registry+https://github.com/rust-lang/crates.io-index)";
        "rand_os" = "rand_os 0.1.3 (registry+https://github.com/rust-lang/crates.io-index)";
        "redox_syscall" = "redox_syscall 0.1.56 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
      };
    };
  "rustc-demangle 0.1.15 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "rustc-demangle";
      version = "0.1.15";
      edition = "2015";
      sha256 = "04rgsfzhz4k9s56vkczsdbvmvg9409xp0nw4cy99lb2i0aa0255s";
      authors = [
        "Alex Crichton <alex@alexcrichton.com>"
      ];
      features = {
        "rustc-dep-of-std" = [ "core" "compiler_builtins" ];
      };
    };
  "ryu 1.0.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "ryu";
      version = "1.0.0";
      edition = "2015";
      sha256 = "0hysqba7hi31xw1jka8jh7qb4m9fx5l6vik55wpc3rpsg46cwgbf";
      authors = [
        "David Tolnay <dtolnay@gmail.com>"
      ];
      features = {
      };
    };
  "safemem 0.3.1 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "safemem";
      version = "0.3.1";
      edition = "2015";
      sha256 = "1gahmnr8n46f7x534pjjmwq514d2x44h5kha6mbpykh46qf1yhqi";
      authors = [
        "Austin Bonander <austin.bonander@gmail.com>"
      ];
      features = {
        "default" = [ "std" ];
      };
      resolvedDefaultFeatures = [ "default" "std" ];
    };
  "scoped_threadpool 0.1.9 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "scoped_threadpool";
      version = "0.1.9";
      edition = "2015";
      sha256 = "1arqj2skcfr46s1lcyvnlmfr5456kg5nhn8k90xyfjnxkp5yga2v";
      authors = [
        "Marvin Löbel <loebel.marvin@gmail.com>"
      ];
      features = {
      };
    };
  "secp256k1 0.12.2 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "secp256k1";
      version = "0.12.2";
      edition = "2015";
      sha256 = "0x59m7zj4df4cyqj15dk73sv1n2naqpnb0qwy00n51mckd3h41q5";
      authors = [
        "Dawid Ciężarkiewicz <dpc@ucore.info>"
        "Andrew Poelstra <apoelstra@wpsoftware.net>"
      ];
      dependencies = {
        "rand" = {
          packageId = "rand 0.4.6 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
        };
        "serde" = {
          packageId = "serde 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
        };
      };
      buildDependencies = {
        "cc" = "cc 1.0.26 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
      };
      resolvedDefaultFeatures = [ "default" "rand" "serde" ];
    };
  "serde 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "serde";
      version = "1.0.98";
      edition = "2015";
      sha256 = "1mbbhkzfafx0ngaq28janqhrfjllhn9fhz0qr0hnbxx0j8h20wwg";
      authors = [
        "Erick Tryzelaar <erick.tryzelaar@gmail.com>"
        "David Tolnay <dtolnay@gmail.com>"
      ];
      dependencies = {
        "serde_derive" = {
          packageId = "serde_derive 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
        };
      };
      features = {
        "default" = [ "std" ];
        "derive" = [ "serde_derive" ];
      };
      resolvedDefaultFeatures = [ "default" "derive" "serde_derive" "std" ];
    };
  "serde_derive 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "serde_derive";
      version = "1.0.98";
      edition = "2015";
      sha256 = "0yk3850f0rbsaqrv0a4x7mqsfkpfipbxas45vv03sfdmxvpwcrvg";
      procMacro = true;
      authors = [
        "Erick Tryzelaar <erick.tryzelaar@gmail.com>"
        "David Tolnay <dtolnay@gmail.com>"
      ];
      dependencies = {
        "proc-macro2" = "proc-macro2 0.4.30 (registry+https://github.com/rust-lang/crates.io-index)";
        "quote" = "quote 0.6.13 (registry+https://github.com/rust-lang/crates.io-index)";
        "syn" = {
          packageId = "syn 0.15.42 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "visit" ];
        };
      };
      features = {
      };
      resolvedDefaultFeatures = [ "default" ];
    };
  "serde_json 1.0.40 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "serde_json";
      version = "1.0.40";
      edition = "2015";
      sha256 = "1wf8lkisjvyg4ghp2fwm3ysymjy66l030l8d7p6033wiayfzpyh3";
      authors = [
        "Erick Tryzelaar <erick.tryzelaar@gmail.com>"
        "David Tolnay <dtolnay@gmail.com>"
      ];
      dependencies = {
        "itoa" = "itoa 0.4.4 (registry+https://github.com/rust-lang/crates.io-index)";
        "ryu" = "ryu 1.0.0 (registry+https://github.com/rust-lang/crates.io-index)";
        "serde" = "serde 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "preserve_order" = [ "indexmap" ];
      };
      resolvedDefaultFeatures = [ "default" ];
    };
  "serde_test 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "serde_test";
      version = "1.0.98";
      edition = "2015";
      sha256 = "0c3znv439pzrc8b0g9b79q46hl3qvi86ssb5rd2zb72riqbm4xv3";
      authors = [
        "Erick Tryzelaar <erick.tryzelaar@gmail.com>"
        "David Tolnay <dtolnay@gmail.com>"
      ];
      dependencies = {
        "serde" = "serde 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
      };
    };
  "smallvec 0.6.10 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "smallvec";
      version = "0.6.10";
      edition = "2015";
      sha256 = "01w7xd79q0bwn683gk4ryw50ad1zzxkny10f7gkbaaj1ax6f4q4h";
      libPath = "lib.rs";
      authors = [
        "Simon Sapin <simon.sapin@exyr.org>"
      ];
      features = {
        "default" = [ "std" ];
      };
      resolvedDefaultFeatures = [ "default" "std" ];
    };
  "strason 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "strason";
      version = "0.4.0";
      edition = "2015";
      sha256 = "1lnyvl2nh5dijxbh1ja32h3947jd90f08517cbmp24sy7xpmdxc5";
      authors = [
        "Andrew Poelstra <apoelstra@wpsoftware.net>"
      ];
      dependencies = {
        "serde" = "serde 1.0.98 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "default" = [ "utf16" ];
      };
    };
  "syn 0.15.42 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "syn";
      version = "0.15.42";
      edition = "2015";
      sha256 = "0yjvq4izrsp6pvpahr86m1mq09nbq6a27fizkmg76xh8fhwfpd79";
      authors = [
        "David Tolnay <dtolnay@gmail.com>"
      ];
      dependencies = {
        "proc-macro2" = {
          packageId = "proc-macro2 0.4.30 (registry+https://github.com/rust-lang/crates.io-index)";
          usesDefaultFeatures = false;
        };
        "quote" = {
          packageId = "quote 0.6.13 (registry+https://github.com/rust-lang/crates.io-index)";
          optional = true;
          usesDefaultFeatures = false;
        };
        "unicode-xid" = "unicode-xid 0.1.0 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "default" = [ "derive" "parsing" "printing" "clone-impls" "proc-macro" ];
        "printing" = [ "quote" ];
        "proc-macro" = [ "proc-macro2/proc-macro" "quote/proc-macro" ];
      };
      resolvedDefaultFeatures = [ "clone-impls" "default" "derive" "extra-traits" "parsing" "printing" "proc-macro" "quote" "visit" ];
    };
  "synstructure 0.10.2 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "synstructure";
      version = "0.10.2";
      edition = "2015";
      sha256 = "0bp29grjsim99xm1l6h38mbl98gnk47lf82rawlmws5zn4asdpj4";
      authors = [
        "Nika Layzell <nika@thelayzells.com>"
      ];
      dependencies = {
        "proc-macro2" = "proc-macro2 0.4.30 (registry+https://github.com/rust-lang/crates.io-index)";
        "quote" = "quote 0.6.13 (registry+https://github.com/rust-lang/crates.io-index)";
        "syn" = {
          packageId = "syn 0.15.42 (registry+https://github.com/rust-lang/crates.io-index)";
          features = [ "visit" "extra-traits" ];
        };
        "unicode-xid" = "unicode-xid 0.1.0 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
      };
    };
  "time 0.1.42 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "time";
      version = "0.1.42";
      edition = "2015";
      sha256 = "1ny809kmdjwd4b478ipc33dz7q6nq7rxk766x8cnrg6zygcksmmx";
      authors = [
        "The Rust Project Developers"
      ];
      dependencies = {
        "libc" = "libc 0.2.60 (registry+https://github.com/rust-lang/crates.io-index)";
        "redox_syscall" = {
          packageId = "redox_syscall 0.1.56 (registry+https://github.com/rust-lang/crates.io-index)";
          target = (target."os" == "redox");
        };
        "winapi" = {
          packageId = "winapi 0.3.7 (registry+https://github.com/rust-lang/crates.io-index)";
          target = target."windows";
          features = [ "std" "minwinbase" "minwindef" "ntdef" "profileapi" "sysinfoapi" "timezoneapi" ];
        };
      };
      features = {
      };
    };
  "traitobject 0.1.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "traitobject";
      version = "0.1.0";
      edition = "2015";
      sha256 = "10hi8pl361l539g4kg74mcrhn7grmwlar4jl528ddn2z2jvb7lw3";
      authors = [
        "Jonathan Reem <jonathan.reem@gmail.com>"
      ];
      features = {
      };
    };
  "typeable 0.1.2 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "typeable";
      version = "0.1.2";
      edition = "2015";
      sha256 = "0lvff10hwyy852m6r11msyv1rpgpnapn284i8dk0p0q5saqvbvnx";
      authors = [
        "Jonathan Reem <jonathan.reem@gmail.com>"
      ];
      features = {
      };
    };
  "unicase 1.4.2 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "unicase";
      version = "1.4.2";
      edition = "2015";
      sha256 = "0rbnhw2mnhcwrij3vczp0sl8zdfmvf2dlh8hly81kj7132kfj0mf";
      authors = [
        "Sean McArthur <sean.monstar@gmail.com>"
      ];
      buildDependencies = {
        "version_check" = "version_check 0.1.5 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "heap_size" = [ "heapsize" "heapsize_plugin" ];
      };
    };
  "unicode-bidi 0.3.4 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "unicode-bidi";
      version = "0.3.4";
      edition = "2015";
      sha256 = "0lcd6jasrf8p9p0q20qyf10c6xhvw40m2c4rr105hbk6zy26nj1q";
      libName = "unicode_bidi";
      authors = [
        "The Servo Project Developers"
      ];
      dependencies = {
        "matches" = "matches 0.1.8 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "flame_it" = [ "flame" "flamer" ];
        "with_serde" = [ "serde" ];
      };
      resolvedDefaultFeatures = [ "default" ];
    };
  "unicode-normalization 0.1.8 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "unicode-normalization";
      version = "0.1.8";
      edition = "2015";
      sha256 = "1pb26i2xd5zz0icabyqahikpca0iwj2jd4145pczc4bb7p641dsz";
      authors = [
        "kwantam <kwantam@gmail.com>"
      ];
      dependencies = {
        "smallvec" = "smallvec 0.6.10 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
      };
    };
  "unicode-xid 0.1.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "unicode-xid";
      version = "0.1.0";
      edition = "2015";
      sha256 = "05wdmwlfzxhq3nhsxn6wx4q8dhxzzfb9szsz6wiw092m1rjj01zj";
      authors = [
        "erick.tryzelaar <erick.tryzelaar@gmail.com>"
        "kwantam <kwantam@gmail.com>"
      ];
      features = {
      };
      resolvedDefaultFeatures = [ "default" ];
    };
  "url 1.7.2 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "url";
      version = "1.7.2";
      edition = "2015";
      sha256 = "0qzrjzd9r1niv7037x4cgnv98fs1vj0k18lpxx890ipc47x5gc09";
      authors = [
        "The rust-url developers"
      ];
      dependencies = {
        "idna" = "idna 0.1.5 (registry+https://github.com/rust-lang/crates.io-index)";
        "matches" = "matches 0.1.8 (registry+https://github.com/rust-lang/crates.io-index)";
        "percent-encoding" = "percent-encoding 1.0.1 (registry+https://github.com/rust-lang/crates.io-index)";
      };
      features = {
        "heap_size" = [ "heapsize" ];
        "query_encoding" = [ "encoding" ];
      };
    };
  "version_check 0.1.5 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "version_check";
      version = "0.1.5";
      edition = "2015";
      sha256 = "1yrx9xblmwbafw2firxyqbj8f771kkzfd24n3q7xgwiqyhi0y8qd";
      authors = [
        "Sergio Benitez <sb@sergio.bz>"
      ];
      features = {
      };
    };
  "winapi 0.3.7 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "winapi";
      version = "0.3.7";
      edition = "2015";
      sha256 = "1k51gfkp0zqw7nj07y443mscs46icmdhld442s2073niap0kkdr8";
      authors = [
        "Peter Atashian <retep998@gmail.com>"
      ];
      dependencies = {
        "winapi-i686-pc-windows-gnu" = {
          packageId = "winapi-i686-pc-windows-gnu 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)";
          target = (stdenv.hostPlatform.config == "i686-pc-windows-gnu");
        };
        "winapi-x86_64-pc-windows-gnu" = {
          packageId = "winapi-x86_64-pc-windows-gnu 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)";
          target = (stdenv.hostPlatform.config == "x86_64-pc-windows-gnu");
        };
      };
      features = {
        "debug" = [ "impl-debug" ];
      };
      resolvedDefaultFeatures = [ "knownfolders" "minwinbase" "minwindef" "ntdef" "ntsecapi" "objbase" "profileapi" "shlobj" "std" "sysinfoapi" "timezoneapi" "winbase" "winerror" "winnt" ];
    };
  "winapi-i686-pc-windows-gnu 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "winapi-i686-pc-windows-gnu";
      version = "0.4.0";
      edition = "2015";
      sha256 = "05ihkij18r4gamjpxj4gra24514can762imjzlmak5wlzidplzrp";
      authors = [
        "Peter Atashian <retep998@gmail.com>"
      ];
      features = {
      };
    };
  "winapi-x86_64-pc-windows-gnu 0.4.0 (registry+https://github.com/rust-lang/crates.io-index)"
    = rec {
      crateName = "winapi-x86_64-pc-windows-gnu";
      version = "0.4.0";
      edition = "2015";
      sha256 = "0n1ylmlsb8yg1v583i4xy0qmqg42275flvbc51hdqjjfjcl9vlbj";
      authors = [
        "Peter Atashian <retep998@gmail.com>"
      ];
      features = {
      };
    };
}
