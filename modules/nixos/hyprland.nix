{...}: {
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
 services.xserver.displayManager.sddm.enable = true; 
  services.blueman.enable = true;
}
