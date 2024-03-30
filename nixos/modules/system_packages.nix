{pkgs, ...}: {
  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    firefox
    obsidian
    wget
    sqlite
    zip
    unzip
    home-manager
    spotify
    nerdfonts
    steam
    stremio
    discord
    whatsapp-for-linux
    signal-desktop
    teams-for-linux
    telegram-desktop
    synology-drive-client
    tuxguitar
    vivaldi
    vivaldi-ffmpeg-codecs
    linuxKernel.packages.linux_6_1.xpadneo
  ];

  hardware.xpadneo.enable = true;
}
