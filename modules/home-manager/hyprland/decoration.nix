{...}: {
  wayland.windowManager.hyprland.settings.decoration = {
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
    "col.shadow" = "0xff11111b";
  };
}
