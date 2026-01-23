{
  lib,
  ...
}:

let
  gitName = "Fredrik Bakken";
  gitEmail = "Fredrik.Bakken@gmail.com";

in

{
  imports = [
    ./components/apps
    ./components/cli

    (import ./components/cli/git.nix {
      gitName = gitName;
      gitEmail = gitEmail;
    })
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
