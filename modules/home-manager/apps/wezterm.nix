{lib, ...}: {
  programs.wezterm = {
    enable = true;
    enableZshIntegration = true;
    extraConfig = lib.readFile ../../../config/wezterm.lua;
  };
}
