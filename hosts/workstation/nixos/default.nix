{pkgs, ...}: {
  imports = [
    ../../../modules/nixos
    ./hardware-configuration.nix
  ];

  networking.hostName = "dascomp";
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    initrd.kernelModules = ["amdgpu"];
    kernelParams = [
      "video=DP-2:3840x2160@60"
      "video=HDMI-A-1:1920x1080@60"
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
  hardware.opengl.driSupport32Bit = true;
  system.stateVersion = "23.11";
}
