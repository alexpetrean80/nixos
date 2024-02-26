{ inputs, lib, config, pkgs, ... }:

{
  imports = [
    ../../modules/home-manager/git.nix
    ../../modules/home-manager/packages.nix
../../modules/home-manager/neovim.nix
    ../../modules/home-manager/common.nix
  ];

  home.stateVersion = "24.05";
}
