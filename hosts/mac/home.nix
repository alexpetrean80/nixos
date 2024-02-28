{...}: {
  imports = [
    ../../modules/home-manager/common.nix

    ../../modules/home-manager/apps
    ../../modules/home-manager/term
  ];

  home = {
    username = "alexp";
    homeDirectory = "/Users/alexp";
    stateVersion = "24.05";
  };
}
