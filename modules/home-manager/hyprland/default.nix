{...}: {
  imports = [
    ./packages

    ./binds.nix
    ./input.nix
    ./default.nix
    ./general.nix
    ./animations.nix
    ./decoration.nix
  ];
  # services.playerctl.enable = true;

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      env = [
        "XCURSOR_SIZE,24"
        "LIBVA_DRIVER_NAME,nvidia"
        "XDG_SESSION_TYPE,wayland"
        "GBM_BACKEND,nvidia-drm"
        "__GLX_VENDOR_LIBRARY_NAME,nvidia"
        "WLR_NO_HARDWARE_CURSORS,1"
      ];
      exec-once = [
        "waybar"
        # "swaybg  --mode fill --image $HOME/.config/hypr/wallpaper.png"
      ];
    };
  };
}
