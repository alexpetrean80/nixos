{pkgs, ...}: {
  imports = [
    ../../common
    ../../common/docker.nix
    ../../common/desktops/kde.nix
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
      package = pkgs.steam.override {withJava = true;};
      gamescopeSession.enable = true;
    };
  #  java.enable = true;
  };

  services.sunshine = {
    enable = true;
    autoStart = true;
    capSysAdmin = true;
    openFirewall = true;
  };

  environment.systemPackages = with pkgs; [
    neovim
    git
  ];

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [47984 47989 47990 48010];
    allowedUDPPortRanges = [
      {
        from = 47998;
        to = 48000;
      }
      {
        from = 8000;
        to = 8010;
      }
    ];
  };
  system.stateVersion = "23.11";
}
