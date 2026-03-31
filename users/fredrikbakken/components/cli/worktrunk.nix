{ pkgs, ... }:

{
  home.packages = [
    pkgs.worktrunk
  ];

  xdg.configFile."worktrunk/config.toml".text = ''
    [post-start]
    copy = "wt step copy-ignored"
    mise-trust = "command -v mise >/dev/null 2>&1 && [ -f mise.toml ] && mise trust"
  '';
}
