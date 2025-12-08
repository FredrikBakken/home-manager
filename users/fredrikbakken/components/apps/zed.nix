{ pkgs, ... }:

{
  programs.zed-editor = {
    enable = true;
    extensions = [
      "dockerfile"
      "docker-compose"
      "html"
      "catppuccin"
      "nix"
      "opencode"
    ];
    userSettings = {
      icon_theme = "Zed (Default)";
      journal = {
        hour_format = "hour24";
      };
      vim_mode = true;
      telemetry = {
        diagnostics = false;
        metrics = false;
      };
      terminal = {
        detect_venv = {
          on = {
            activate_script = "default";
            directories = [".venv"];
          };
        };
        env = {
          TERM = "ghostty";
        };
      };
      theme = {
        mode = "dark";
        light = "One Light";
        dark = "Catppuccin Mocha";
      };
    };
  };
}
