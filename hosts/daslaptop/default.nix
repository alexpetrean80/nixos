{...}: {
  imports = [
    /etc/nixos/hardware-configuration.nix

    ./hardware.nix
    ./packages.nix

    ../../common

    ../../common/virtualization/kvm.nix
    ../../common/virtualization/docker.nix

    ../../common/desktops/kde.nix
  ];

  networking.hostName = "daslaptop";

  system.stateVersion = "23.11";
}
