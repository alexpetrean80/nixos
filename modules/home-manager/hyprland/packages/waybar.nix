{lib, ...}: {
  programs.waybar = {
    enable = true;
    settings.mainBar = {
      layer = "top";
      position = "top";
      modules-left = [
        "hyprland/workspaces"
      ];
      modules-center = [
        "custom/music"
      ];
      modules-right = [
        "pulseaudio"
        "backlight"
        "battery"
        "clock"
        "tray"
        "custom/lock"
        "custom/power"
      ];
      "hyprland/workspaces" = {
        disable-scroll = true;
        sort-by-name = true;
        format = " {icon} ";
        format-icons = {
          default = "";
        };
      };
      tray = {
        icon-size = 21;
        spacing = 10;
      };
      "custom/music" = {
        format = "  {}";
        escape = true;
        interval = 5;
        tooltip = false;
        exec = "playerctl metadata --format='{{ title }}'";
        on-click = "playerctl play-pause";
        max-length = 50;
      };
      clock = {
        timezone = "Europe/Bucharest";
        tooltip-format = ''
          <big>{:%Y %B}</big>
          <tt><small>{calendar}</small></tt>'';
        format-alt = ''
          {:%d/%m/%Y}'';
        format = ''
          {:%H:%M}'';
      };
      backlight = {
        device = "intel_backlight";
        format = "{icon}";
        format-icons = [
          ""
          ""
          ""
          ""
          ""
          ""
          ""
          ""
          ""
        ];
      };
      battery = {
        states = {
          warning = 30;
          critical = 15;
        };
        format = "{icon}";
        format-alt = "{icon}";
        format-charging = "󰂄";
        format-plugged = "󱟢";
        format-icons = ["󰂎" "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"];
      };
      pulseaudio = {
        format = "{icon} {volume}%";
        format-muted = "";
        format-icons = {
          default = [
            ""
            ""
            " "
          ];
        };
        on-click = "pavucontrol";
      };
      "custom/lock" = {
        tooltip = false;
        on-click = "sh -c '(sleep 0.5s; swaylock --image $HOME/.config/hypr/wallpaper.png)' & disown";
        format = "";
      };
      "custom/power" = {
        tooltip = false;
        on-click = "wlogout &";
        format = "⏻";
      };
    };
    style = lib.readFile ../../../../config/waybar/style.css;
  };
}
