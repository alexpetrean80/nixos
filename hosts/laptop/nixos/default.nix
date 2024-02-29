{...}: {
  imports = [
    ../../../modules/nixos
    ./hardware-configuration.nix
  ];

  networking.hostName = "daslaptop";

  system.stateVersion = "23.11";
}
