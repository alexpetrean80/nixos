{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    firefox
    obsidian
    telegram-desktop
    signal-desktop
    discord
    gimp
    spotifywm
    krita
    darktable
    moonlight-qt
    nerdfonts
    synology-drive-client
    xwaylandvideobridge
    netbird-ui
    stremio
  ];

  programs.virt-manager.enable = true; # can be used to manage non-local hosts as well
}
