{...}: {
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
  services.blueman.enable = true;
}
