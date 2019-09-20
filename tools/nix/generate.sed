1 s,.*,  {,
s,^  ,,
1 i{ gdk_rpc_crate, target, stdenv }:
/^ \+crateName = "gdk-rpc";$/a \ \ \ \ \ \ inherit (gdk_rpc_crate) postInstall src type\;
/builtins\.filterSource/d
s,^}\;,},
/^ \+"default" = \[ "liquid" \]\;$/d  # TODO: fix liquid pkg