{
  lib,
  ...
}:

let
  gitName = "Fredrik Bakken";
  gitEmail = "Fredrik.Bakken@norges-bank.no";

in

{
  imports = [
    ./components/apps/zed.nix
    ./components/cli/azure-cli.nix
    ./components/cli/databricks-cli.nix
    ./components/cli/devbox.nix
    ./components/cli/direnv.nix
    ./components/cli/git-credential-manager.nix
    ./components/cli/home-manager.nix
    ./components/cli/starship.nix
    ./components/cli/wslu.nix
    ./components/cli/zsh.nix

    (import ./components/cli/git.nix {
      gitName = gitName;
      gitEmail = gitEmail;
    })
  ];

  config = {
    home = {
      username = "fredrikbakken";
      homeDirectory = "/home/fredrikbakken";
      stateVersion = "25.11";
    };

    nixpkgs.config.allowUnfreePredicate = (
      pkg:
      builtins.elem (lib.getName pkg) [
        "databricks-cli"
      ]
    );

    # 🔐 WSL-only: Use Git Credential Manager
    programs.git.settings = {
      credential = {
        helper = "manager";
      };
    };

    # 🌐 WSL browser integration (important for Entra login popups)
    home.sessionVariables = {
      BROWSER = "wslview";
    };
  };
}
