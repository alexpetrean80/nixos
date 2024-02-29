{pkgs, ...}: {
  imports = [
    ../../../modules/home-manager
    ../../../modules/home-manager/cdp
    ../../../modules/home-manager/git
    ../../../modules/home-manager/kitty
    ../../../modules/home-manager/neovim
    ../../../modules/home-manager/starship
    ../../../modules/home-manager/tmux
    ../../../modules/home-manager/zsh
    ../../../modules/home-manager/vscode
    ../../../modules/home-manager/packages.nix
    ./term
  ];

  home = {
    username = "alexp";
    homeDirectory = "/Users/alexp";
    stateVersion = "24.05";
  };
}
