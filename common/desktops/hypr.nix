{ pkgs, ... }: {
  imports = [../displaymanagers/sddm.nix];

  programs.hyprland.enable = true;
  environment.systemPackages = with pkgs;[
    wl-clipboard
    pavucontrol
    waybar
    waybar-mpris
    rofi-wayland
    networkmanagerapplet
    playerctl
    hyprlock
  ];

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  services.displayManager = {
    sddm = {
      enable = true;
      wayland.enable = true;
    };
  };
}
