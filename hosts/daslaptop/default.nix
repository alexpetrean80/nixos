{pkgs, ...}: {
  imports = [
    ./hardware-configuration.nix
    ../../common
    ../../common/kvm.nix
    ../../common/desktops/kde.nix
  ];

  networking.hostName = "daslaptop";
  hardware.bluetooth.enable = true;
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
  ];

  programs.virt-manager.enable = true; # can be used to manage non-local hosts as well


  system.stateVersion = "23.11";
}
