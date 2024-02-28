{...}: {
  home = {
    username = "alexp";
    homeDirectory = "/home/alexp";
  };

  programs = {
    home-manager.enable = true;
  };
  nixpkgs.config.allowUnfree = true;
}
