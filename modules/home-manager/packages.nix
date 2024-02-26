{ inputs, lib, config, pkgs, ... }:

let
  cli = with pkgs; [
    fzf
    gh
    ripgrep
    fd
    eza
    httpie
    lazygit
    bat
  ];
  chat = with pkgs; [
    discord
    whatsapp-for-linux
    signal-desktop
    teams-for-linux
    telegram-desktop
  ];
  dev = with pkgs; [
    cmake
    gnumake
    gcc
    rustup
    nodejs_20
    python3
    go
    fnm
    octaveFull
  ];
  fun = with pkgs; [
    spotify
    stremio
  ];
in
{
  home.packages = with pkgs;
    cli ++ chat ++ dev ++ fun ++ [ synology-drive-client nerdfonts tuxguitar ];
}

