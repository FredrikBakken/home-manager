{ pkgs, ... }:

{
  home.packages = [
    pkgs.worktrunk
  ];

  xdg.configFile."worktrunk/config.toml".text = ''
    worktree-path = "{{ repo_path }}/../worktrees/{{ branch | sanitize }}"
  '';
}
