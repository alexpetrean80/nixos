{...}: {
  imports = [
    ./docker.nix
    ./locale.nix
    ./sound.nix
    ./system_packages.nix
    ./users.nix
  ];

  boot.loader = {
    # systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };
  nixpkgs.config.permittedInsecurePackages = [
    "electron-25.9.0"
  ];
  networking.networkmanager.enable = true;

  nix.settings.experimental-features = ["nix-command" "flakes"];

  nixpkgs.config.allowUnfree = true;

  hardware.graphics.enable = true;
  hardware.opengl.driSupport32Bit = true;
}
