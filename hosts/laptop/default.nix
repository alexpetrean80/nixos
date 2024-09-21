{pkgs, ...}: {
  imports = [
    ./hardware-configuration.nix
    ../../common
    ../../common/desktops/kde.nix
  ];

  networking.hostName = "daslaptop";
  hardware.bluetooth.enable = true;
  environment.systemPackages = with pkgs; [
    telegram-desktop
    signal-desktop
    discord
    gimp
    spotifywm
    krita
    darktable
    moonlight-qt
  ];

  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true; # can be used to manage non-local hosts as well


  system.stateVersion = "23.11";
}
