{...}: {
  imports = [
    ./hardware-configuration.nix
    ../../modules
  ];

  networking.hostName = "daslaptop";

  system.stateVersion = "23.11";
}
