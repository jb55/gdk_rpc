
{ nixpkgs
, useFilterSource ? true
, version
}:
let pkgs = nixpkgs.pkgs;
in
pkgs.rustPlatform.buildRustPackage rec {
  pname = "gdk_rpc";
  inherit version;

  src = if useFilterSource then pkgs.nix-gitignore.gitignoreSource [] ../..
        else ../..;
  buildInputs = with pkgs; [ openssl pkgconfig sqlite ];

  cargoSha256 = "sha256:0d5l653661gw95ndsxy6fchgzbmj6anv1cvpdqsrvmj831nl0vd5";

  meta = with pkgs.stdenv.lib; {
    description = "gdk_rpc";
    homepage = "https://github.com/Blockstream/gdk_rpc";
    license = licenses.mit;
    maintainers = [ maintainers.jb55 ];
    platforms = platforms.all;
  };
}
