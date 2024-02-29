{...}: {
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos/common.nix
    ../../modules/nixos/locale.nix
    ../../modules/nixos/nvidia.nix
    ../../modules/nixos/sound.nix
    ../../modules/nixos/system_packages.nix
    ../../modules/nixos/users.nix
    ../../modules/nixos/sddm.nix
    ../../modules/nixos/xserver.nix
    ../../modules/nixos/hyprland.nix
  ];

  networking.hostName = "dascomp"; # Define your hostname.

  system.stateVersion = "23.11";
}
