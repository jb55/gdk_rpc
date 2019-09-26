{ nixpkgs ? import (builtins.fetchTarball {
      name = "nixos-unstable-2019-09-14";
      url = https://github.com/nixos/nixpkgs/archive/60516726c16def4866654e8119447d8557b3e5f1.tar.gz;
      sha256 = "18qs1xvlsh87mjyg8qmnykcw8rlxgypb3knra4ylmsw6n41l6h9z";
  }) {}
, useFilterSource ? true
, cargo ? false
, version ? "0.0.1"
}:

let
  pkgs = nixpkgs.pkgs;

  src-filter = (import ./tools/nix/source-filter.nix) pkgs.lib;
  gdk_rpc_crate = {
    src = if useFilterSource
            then builtins.filterSource src-filter ./.
            else ./.;
    type = ["staticlib"];

    postInstall = ''
      mkdir -p $out/include/gdk_rpc
      cp gdk_rpc.h $out/include/gdk_rpc
      ln -s $out/lib/libgdk_rpc-*.a $out/lib/libgdk_rpc.a
      ln -s $out/lib/gdk_rpc-*.d $out/lib/gdk_rpc.d
      ${pkgs.binutils-unwrapped}/bin/objcopy --strip-unneeded --keep-symbols=tools/exported-symbols --weaken-symbols=tools/weaken-symbols $out/lib/libgdk_rpc.a
    '';
  };
in

if cargo then
  import ./tools/nix/cargo-build.nix {
    inherit nixpkgs useFilterSource version;
  }
else
  import ./tools/nix/crate2nix-build.nix {
    inherit nixpkgs useFilterSource gdk_rpc_crate;
  }
