{
  pkgs,
  lib,
  ...
}: {
  programs.tmux = {
    enable = true;
    mouse = true;
    plugins = with pkgs.tmuxPlugins; [
      sensible
      yank
      prefix-highlight
      {
        plugin = resurrect;
        extraConfig = "set -g @resurrect-strategy-nvim 'session'";
      }
      {
        plugin = catppuccin;
        extraConfig = lib.readFile ../../../config/tmux/catppuccin.conf;
      }
    ];
    extraConfig = lib.readFile ../../../config/tmux/tmux.conf;
  };
}
