{ config, pkgs, ... }:

{
  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    firefox
    wget
    sqlite
    zip
    unzip
    home-manager
    gnome.gnome-tweaks
  ];
}
