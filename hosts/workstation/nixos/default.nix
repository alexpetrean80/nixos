{...}: {
  imports = [
    ../../../modules/nixos
    ./hardware-configuration.nix
    ./nvidia.nix
  ];

  networking.hostName = "dascomp";

  system.stateVersion = "23.11";
}
