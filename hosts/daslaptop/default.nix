{ ... }: {
  imports = [
    /etc/nixos/hardware-configuration.nix
    ./hardware.nix
    ./packages.nix
    ../../common
    ../../common/virtualization/docker.nix
    ../../common/desktops/hypr.nix
  ];

  networking.hostName = "daslaptop";

  system.stateVersion = "23.11";
}
