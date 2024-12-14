{ ... }: {
  imports = [
    /etc/nixos/hardware-configuration.nix

    ./hardware.nix
    ./packages.nix
    ../../modules/nixos
    ../../modules/nixos/virtualization/docker.nix
    ../../modules/nixos/desktops/kde.nix
    ../../modules/common
  ];

  networking.hostName = "daslaptop";

  system.stateVersion = "23.11";
}
