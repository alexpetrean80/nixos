{...}: {
  imports = [
    ./locale.nix
    ./sound.nix
    ./system_packages.nix
    ./users.nix
    ./xserver.nix
  ];

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  nixpkgs.config.permittedInsecurePackages = [
    "electron-25.9.0"
  ];

  programs.nix-ld.enable = true; 

  networking.networkmanager.enable = true;

  nix.settings.experimental-features = ["nix-command" "flakes"];

  nixpkgs.config.allowUnfree = true;

  services.netbird.enable = true;

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}
