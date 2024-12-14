{ pkgs, ... }: {
  imports = [
    ../../modules/nixos
    ../../modules/nixos/docker.nix
    ../../modules/nixos/ssh.nix
    ./hardware-configuration.nix../
  ];

  networking.hostName = "dasserver";

  boot = {
    kernelPackages = pkgs.linuxPackages_6_6;
    initrd.kernelModules = [ "amdgpu" ];
    kernelParams = [
      "amdgpu.sg_display=0"
    ];
  };
  services.xserver.videoDrivers = [ "modesetting" ];

  hardware.graphics = {
    extraPackages = with pkgs; [
      rocmPackages.clr.icd
      amdvlk
    ];
    extraPackages32 = with pkgs; [
      driversi686Linux.amdvlk
    ];
  };

  programs = {
    steam = {
      enable = true;
      gamescopeSession.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    neovim
    git
  ];

  networking.firewall = {
    enable = false;
    allowedTCPPorts = [ 22 ];
  };

  system.stateVersion = "23.11";
}
