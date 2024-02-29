{...}: {
  imports = [
    ../../../modules/home-manager
    ../../../modules/home-manager/cdp
    ../../../modules/home-manager/git
    ../../../modules/home-manager/gnome
    ../../../modules/home-manager/kitty
    ../../../modules/home-manager/neovim
    ../../../modules/home-manager/tmux
    ../../../modules/home-manager/vscode
    ../../../modules/home-manager/starship
    ../../../modules/home-manager/zsh
    ../../../modules/home-manager/packages.nix
  ];

  home = {
    username = "alexp";
    homeDirectory = "/home/alexp";
    stateVersion = "24.05";
  };
}
