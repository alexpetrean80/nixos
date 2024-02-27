{...}: {
  imports = [
    ../../modules/home-manager/git.nix
    ../../modules/home-manager/tmux.nix
    ../../modules/home-manager/cdp.nix
    ../../modules/home-manager/packages.nix
    # ../../modules/home-manager/neovim.nix
    ../../modules/home-manager/nixvim.nix
    ../../modules/home-manager/common.nix
    ../../modules/home-manager/starship.nix
    ../../modules/home-manager/zsh.nix
  ];

  home.stateVersion = "24.05";
}
