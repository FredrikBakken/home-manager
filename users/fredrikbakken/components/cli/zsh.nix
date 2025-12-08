{
  programs.zsh = {
    enable = true;

    autosuggestion = {
      enable = true;
    };
    initExtra = ''
      eval "$(direnv hook zsh)"
      eval "$(starship init zsh)"
    '';
    initExtraBeforeCompInit = ''
      if [ -f "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh" ]; then
        . "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
      fi
    '';
    shellAliases = {
      ll = "ls -lah";
      update = "home-manager switch --flake ~/.config/home-manager#fredrikbakken@macbook --show-trace";
    };
    syntaxHighlighting = {
      enable = true;
    };
  };
}
