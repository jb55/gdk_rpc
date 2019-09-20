#!/usr/bin/env bash

set -e

PTH="$( cd "$(dirname "$0")" ; pwd -P )"

cd "$PTH"

command -v nix-shell >/dev/null || (printf "install nix: curl https://nixos.org/nix/install | sh\n" && exit 1)

crate2nix=$(nix-build --no-out-link -j auto -Q https://github.com/kolloch/crate2nix/tarball/master)/bin/crate2nix

$crate2nix generate -f ../../Cargo.toml

mv ../../crate-hashes.json .

sed -n '/^  crates =/,/^  }\;/p' Cargo.nix \
    | sed -f generate.sed \
    > crates.nix
