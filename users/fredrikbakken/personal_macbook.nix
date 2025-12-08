{
  lib,
  ...
}:

{
  imports = [
    ./components/apps
    ./components/cli
  ];

  config = {
    home = {
      username = "fredrikbakken";
      homeDirectory = "/Users/fredrikbakken";
      stateVersion = "25.11";
    };

    nixpkgs.config.allowUnfreePredicate = (
      pkg:
      builtins.elem (lib.getName pkg) [
        "discord"
        "signal-desktop-bin"
      ]
    );
  };
}
