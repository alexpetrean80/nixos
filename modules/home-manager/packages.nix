{ inputs, lib, config, pkgs, ... }:

{
  home.packages = with pkgs;
    [
      spotify
      stremio
      synology-drive-client
      luajitPackages.luarocks
      fzf
      ripgrep
      gh
      fd
      cmake
      gnumake
      tmux
      gcc
      bat
      eza
      rustup
      nodejs_20
      python3
      steam
      go
      telegram-desktop
      starship
      zsh
      fnm
      nerdfonts
      tuxguitar
      whatsapp-for-linux
      signal-desktop
      teams-for-linux
      octaveFull
      httpie
      lazygit
    ];
}

