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

      eval "$(direnv hook zsh)"
      eval "$(starship init zsh)"
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

      hm-update = "home-manager switch --flake ~/.config/home-manager#fredrikbakken@macbook --show-trace";
    };
    syntaxHighlighting = {
      enable = true;
    };
  };
}
