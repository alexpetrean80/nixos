{ ... }: {
  imports = [
    ../../modules/tmux.nix
    ../../modules/home-manager/nixvim.nix
    ../../modules/home-manager/starship.nix
    ../../modules/home-manager/zsh.nix
  ];

  home = {
    username = "alexp";
    homeDirectory = "/Users/alexp";
    stateVersion = 24.05;
  };
}
