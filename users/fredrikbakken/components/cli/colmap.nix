{ pkgs, ... }:

let
  colmapNoCheck = pkgs.colmap.overrideAttrs (old: {
    doCheck = false;
    doInstallCheck = false;
  });
in
{
  home.packages = with pkgs; [
    (runCommand "colmap-wrapped" { buildInputs = [ makeWrapper ]; } ''
      makeWrapper ${colmapNoCheck}/bin/colmap $out/bin/colmap \
        --set DYLD_LIBRARY_PATH "${onnxruntime}/lib"
    '')
  ];
}
