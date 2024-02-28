{...}: {
  wayland.windowManager.hyprland.settings = {
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
      "SUPER, Return, exec, alacritty"
      "SUPER SHIFT, Return, exec, firefox"
      "SUPER, Space, exec, wofi --show drun"
    ];
    bindm = [
      # Move/resize windows with mainMod + LMB/RMB and dragging
      "SUPER, mouse=272, movewindow"
      "SUPER, mouse=273, resizewindow"
    ];
  };
}
