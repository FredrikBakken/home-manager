{ pkgs, ... }:

{
  home.packages = [
    pkgs.worktrunk
  ];

  xdg.configFile."worktrunk/config.toml".text = ''
    worktree-path = "{{ repo_path }}/../worktrees/{{ branch | sanitize }}"

    [post-start]
    copy = "wt step copy-ignored"
    mise-trust = "command -v mise >/dev/null 2>&1 && [ -f mise.toml ] && mise trust"
    prek = "command -v prek >/dev/null 2>&1 && [ -f prek.toml ] && prek install"
  '';
}
