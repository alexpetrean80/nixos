{pkgs, ...}: {
  imports = [
    ../../common
    ../../common/docker.nix
    ../../common/kde.nix
    ./hardware-configuration.nix
  ];

  networking.hostName = "dascomp";
  boot = {
    kernelPackages = pkgs.linuxPackages_6_6;
    initrd.kernelModules = ["amdgpu"];
    kernelParams = [
      "amdgpu.sg_display=0"
    ];
  };
  services.xserver.videoDrivers = ["modesetting"];

  hardware.opengl = {
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
      package = pkgs.steam.override {withJava = true;};
      gamescopeSession.enable = true;
    };
  java.enable = true;
  };
  system.stateVersion = "23.11";
}
