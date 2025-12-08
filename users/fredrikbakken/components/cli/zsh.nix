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
      add = "git add";
      commit = "git commit -s -m";
      checkout = "git checkout";
      clone = "git clone";
      push = "git push";
      pull = "git pull --rebase";
      rebase = "git rebase";
      stash = "git stash";
      status = "git status";
      switch = "git switch";

      ll = "ls -lah";

      hm-update = "home-manager switch --flake ~/.config/home-manager#fredrikbakken@macbook --show-trace";
    };
    syntaxHighlighting = {
      enable = true;
    };
  };
}
