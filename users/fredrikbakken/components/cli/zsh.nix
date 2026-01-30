{
  programs.zsh = {
    enable = true;

    autosuggestion = {
      enable = true;
    };
    initContent = ''
      if [ -f "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh" ]; then
        . "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
      fi

      (( $+commands[direnv] )) && eval "$(direnv hook zsh)"
      (( $+commands[starship] )) && eval "$(starship init zsh)"
      (( $+commands[mise] )) && eval "$(mise activate zsh)"
    '';
    shellAliases = {
      ga = "git add";
      gc = "git commit -s -m";
      gcl = "git clone";
      gco = "git checkout";
      gp = "git push";
      gpl = "git pull --rebase";
      grb = "git rebase";
      gsh = "git stash";
      gst = "git status";
      gsw = "git switch";

      k = "kubectl";
      ll = "ls -lah";

      hm-mac = "home-manager switch --flake ~/.config/home-manager#fredrikbakken@macbook --show-trace";
      hm-wsl = "home-manager switch --flake ~/.config/home-manager#fredrikbakken@nb-wsl --show-trace";
    };
    syntaxHighlighting = {
      enable = true;
    };
  };
}
