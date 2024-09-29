{pkgs, ...}: {
  imports = [
    ../../common
    ../../common/docker.nix
    # ../../common/desktops/kde.nix
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
      gamescopeSession.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    neovim
    git
  ];

  services.openssh = {
    enable = true;
    ports = [22];
    settings = {
      PasswordAuthentication = true;
      AllowUsers = ["alexp"];
      UseDns = true;
      X11Forwarding = false;
      PermitRootLogin = "no";
    };
  };

  networking.firewall = {
    enable = false;
    allowedTCPPorts = [22];
  };

  system.stateVersion = "23.11";
}
