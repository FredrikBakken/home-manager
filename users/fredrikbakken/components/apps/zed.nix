# Zed Editor
# Homepage: https://zed.dev/
# Schema for settings.json: https://github.com/zed-industries/zed/blob/main/assets/settings/default.json

{
  programs.zed-editor = {
    enable = true;
    extensions = [
      "catppuccin"
      "dockerfile"
      "docker-compose"
      "git-firefly"
      "nix"
      "opencode"
      "sqruff"
      "toml"
      "typst"
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
            directories = [ ".venv" ];
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
