{ pkgs, ... }:

{
  programs.chromium = {
    enable = true;
    package = pkgs.brave;

    extensions = [
      { id = "ghmbeldphafepmbegfdlkpapadhbakde"; } # Proton Pass
      { id = "jplgfhpmjnbigmhklmmbgecoobifkmpa"; } # Proton VPN
    ];
  };
}
