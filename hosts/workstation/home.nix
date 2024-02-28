{...}: {
  imports = [
    ../../modules/home-manager/apps.nix
    ../../modules/home-manager/common.nix
    ../../modules/home-manager/term.nix
  ];
  home = {
    username = "alexp";
    homeDirectory = "/home/alexp";
  };
}
