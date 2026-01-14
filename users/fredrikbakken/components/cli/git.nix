{ gitName, gitEmail, ... }:

{
  programs.git = {
    enable = true;

    lfs.enable = false;
    settings = {
      user = {
        name = gitName;
        email = gitEmail;
      };
      init = {
        defaultBranch = "main";
      };
      push = {
        autoSetupRemote = true;
      };
      pull = {
        rebase = true;
      };
      rebase = {
        autoStash = true;
      };
    };
  };
}
