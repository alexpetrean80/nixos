{...}: {
  imports = [
    ../../../modules/home-manager
    ../../../modules/home-manager/apps
    ../../../modules/home-manager/term
    ../../../modules/home-manager/personal
    ../../../modules/home-manager/gnome
  ];

  home = {
    username = "alexp";
    homeDirectory = "/home/alexp";
    stateVersion = "24.05";
  };
}
