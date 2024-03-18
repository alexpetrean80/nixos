{...}: {
  imports = [./lazygit.nix ./github-cli.nix];

  programs.git = {
    enable = true;
    userName = "Alex-Tudor Petrean";
    userEmail = "alex@padfoot.cc";
    diff-so-fancy.enable = true;
    # signing = {
    #   key = "49FEB0D734CF380AC00F540DA5BA27BA985693DF";
    #   signByDefault = true;
    # };
    ignores = [
      "node_modules"
      ".DS_Store"
      ".AppleDouble"
      ".LSOverride"
      "._*" # thumbnails
      # vim related
      "[._]*.s[a-v][a-z]"
      "!*.svg"
      "[._]*.sw[a-p]"
      "[._]s[a-rt-v][a-z]"
      "[._]ss[a-gi-z]"
      "[._]sw[a-p]"
      "[._]*.un~" # persistent undo
    ];
    extraConfig = {
      pull.rebase = true;
      user.useConfigOnly = true;
      init.defaultBranch = "main";
      "url \"ssh://git@github.com/\"" = {
        insteadOf = "https://github.com/";
      };
    };
  };
}
