{
  programs.git = {
    enable = true;
    lfs.enable = false;
    settings = {
      user = {
        name = "Fredrik Bakken";
        email = "Fredrik.Bakken@gmail.com";
      };
      init = {
        defaultBranch = "main";
      };
      push = {
        autoSetupRemote = true;
      };
    };
  };
}
