{...}: let
  rosewaterAlpha = "f5e0dc";
  flamingoAlpha = "f2cdcd";
  pinkAlpha = "f5c2e7";
  mauveAlpha = "cba6f7";
  redAlpha = "f38ba8";
  maroonAlpha = "eba0ac";
  peachAlpha = "fab387";
  yellowAlpha = "f9e2af";
  greenAlpha = "a6e3a1";
  tealAlpha = "94e2d5";
  skyAlpha = "89dceb";
  sapphireAlpha = "74c7ec";
  blueAlpha = "89b4fa";
  lavenderAlpha = "b4befe";
  textAlpha = "cdd6f4";
  subtext1Alpha = "bac2de";
  subtext0Alpha = "a6adc8";
  overlay2Alpha = "9399b2";
  overlay1Alpha = "7f849c";
  overlay0Alpha = "6c7086";
  surface2Alpha = "585b70";
  surface1Alpha = "45475a";
  surface0Alpha = "313244";
  baseAlpha = "1e1e2e";
  mantleAlpha = "181825";
  crustAlpha = "11111b";
  rosewater = "0xfff5e0dc";
  flamingo = "0xfff2cdcd";
  pink = "0xfff5c2e7";
  mauve = "0xffcba6f7";
  red = "0xfff38ba8";
  maroon = "0xffeba0ac";
  peach = "0xfffab387";
  yellow = "0xfff9e2af";
  green = "0xffa6e3a1";
  teal = "0xff94e2d5";
  sky = "0xff89dceb";
  sapphire = "0xff74c7ec";
  blue = "0xff89b4fa";
  lavender = "0xffb4befe";
  text = "0xffcdd6f4";
  subtext1 = "0xffbac2de";
  subtext0 = "0xffa6adc8";
  overlay2 = "0xff9399b2";
  overlay1 = "0xff7f849c";
  overlay0 = "0xff6c7086";
  surface2 = "0xff585b70";
  surface1 = "0xff45475a";
  surface0 = "0xff313244";
  base = "0xff1e1e2e";
  mantle = "0xff181825";
  crust = "0xff11111b";
in {
  imports = [
    ./waybar.nix
    ./wofi.nix
    ./swaylock.nix
    ./wlogout.nix
  ];

  services.playerctld.enable = true;

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      general = {
        gaps_in = 5;
        layout = "master";
        gaps_out = 13;
        border_size = 2;
        "col.active_border" = pink;
        "col.inactive_border" = base;
      };
      input = {
        kb_layout = "us";
        kb_options = "caps:swapescape";
        follow_mouse = 1;
        touchpad = {
          natural_scroll = false;
        };
        sensitivity = 0;
      };
      # layouts.master = {
      # new_is_master = false;
      # mfact = 0.6;
      # };
      decoration = {
        rounding = 10;
        active_opacity = 0.97;
        inactive_opacity = 0.8;
        blur = {
          enabled = true;
          size = 12;
          xray = true;
          passes = 1;
          new_optimizations = true;
          noise = 0.1;
          contrast = 1.1;
          brightness = 1.1;
        };
        drop_shadow = true;
        shadow_range = 4;
        shadow_render_power = 10;
        "col.shadow" = crust;
      };

      animations = {
        enabled = true;
        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
        animation = [
          "windows, 1, 7, myBezier"
          "windowsOut, 1, 7, default, popin 80%"
          "border, 1, 10, default"
          "borderangle, 1, 8, default"
          "fade, 1, 7, default"
          "workspaces, 1, 6, default"
        ];
      };
      bind = [
        "SUPER, Q, killactive,"
        "SUPER SHIFT, Q, exec, wlogout &,"
        "SUPER, S , exec, sh -c '(sleep 0.5s; swaylock --image $HOME/.config/hypr/wallpaper.png)' & disown"
        "SUPER, V, togglefloating,"
        "SUPER, F, fullscreen, 1"

        "SUPER, C, exec, cliphist list | wofi --dmenu | cliphist decode | wl-copy"
        # Move focus with mainMod + arrow keys
        "SUPER, h, movefocus, l"
        "SUPER, l, movefocus, r"
        "SUPER, k, movefocus, u"
        "SUPER, j, movefocus, d"

        # Switch workspaces with mainMod + [0-9]
        "SUPER, 1, workspace, 1"
        "SUPER, 2, workspace, 2"
        "SUPER, 3, workspace, 3"
        "SUPER, 4, workspace, 4"
        "SUPER, 5, workspace, 5"
        "SUPER, 6, workspace, 6"
        "SUPER, 7, workspace, 7"
        "SUPER, 8, workspace, 8"
        "SUPER, 9, workspace, 9"
        "SUPER, 0, workspace, 10"

        # Next/Prev workspace
        "SUPER SHIFT, h, workspace, e+1"
        "SUPER SHIFT, l, workspace, e-1"

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        "SUPER SHIFT, 1, movetoworkspace, 1"
        "SUPER SHIFT, 2, movetoworkspace, 2"
        "SUPER SHIFT, 3, movetoworkspace, 3"
        "SUPER SHIFT, 4, movetoworkspace, 4"
        "SUPER SHIFT, 5, movetoworkspace, 5"
        "SUPER SHIFT, 6, movetoworkspace, 6"
        "SUPER SHIFT, 7, movetoworkspace, 7"
        "SUPER SHIFT, 8, movetoworkspace, 8"
        "SUPER SHIFT, 9, movetoworkspace, 9"
        "SUPER SHIFT, 0, movetoworkspace, 10"

        # Scroll through existing workspaces with mainMod + scroll
        "SUPER, mouse_down, workspace, e+1"
        "SUPER, mouse_up, workspace, e-1"
      ];
      bindr = [
        "SUPER, Return, exec, kitty"
        "SUPER SHIFT, Return, exec, firefox"
        "SUPER, Space, exec, wofi --show drun"
      ];
      bindm = [
        # Move/resize windows with mainMod + LMB/RMB and dragging
        "SUPER, mouse=272, movewindow"
        "SUPER, mouse=273, resizewindow"
      ];
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
