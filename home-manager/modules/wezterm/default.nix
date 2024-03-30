{lib, ...}: {
  programs.wezterm = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    extraConfig = lib.readFile ./config/wezterm.lua;
  };
}
