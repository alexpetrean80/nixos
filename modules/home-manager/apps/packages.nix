{pkgs, ...}: {
  home.packages = with pkgs; [
    spotify
    stremio
    discord
    whatsapp-for-linux
    signal-desktop
    teams-for-linux
    telegram-desktop
    synology-drive-client
    nerdfonts
    tuxguitar
    pavucontrol
    wdisplays
    bluez
  ];
}
