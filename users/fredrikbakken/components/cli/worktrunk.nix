{ pkgs, ... }:

{
  home.packages = [
    pkgs.worktrunk
  ];

  xdg.configFile."wt.toml".text = ''
    [post-start]
    copy = "wt step copy-ignored"
  '';
}
