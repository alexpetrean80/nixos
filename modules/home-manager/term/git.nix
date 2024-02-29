{...}: {
  
  programs.git = {
    enable = false;
    userName = "Alex Petrean";
    userEmail = "alex-tudor.petrean@snyk.io";

    diff-so-fancy.enable = true;
    signing = {
      key = null;
      signByDefault = true;
    };
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
      init.defaultBranch = "main";
      "url \"ssh://git@github.com/\"" = {
        insteadOf = "https://github.com/";
      };
    };
  };
}
