{...}: {
  imports = [
    ./hardware-configuration.nix

    ../../modules/nixos/common.nix
    ../../modules/nixos/locale.nix
    ../../modules/nixos/sound.nix
    ../../modules/nixos/system_packages.nix
    ../../modules/nixos/users.nix
    ../../modules/nixos/xserver.nix
    ../../modules/nixos/hyprland.nix
  ];

  networking.hostName = "daslaptop"; # Define your hostname.
  # networking.wireless.enable = true; # Enables wireless support via wpa_supplicant.

  system.stateVersion = "23.11";
}
