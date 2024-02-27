{pkgs, ...}: {
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
        extraConfig = ''
          set -g @plugin 'catppuccin/tmux'
          set -g @catppuccin_window_left_separator ""
          set -g @catppuccin_window_right_separator " "
          set -g @catppuccin_window_middle_separator " █"
          set -g @catppuccin_window_number_position "right"

          set -g @catppuccin_window_default_fill "number"
          set -g @catppuccin_window_default_text "#W"

          set -g @catppuccin_window_current_fill "number"
          set -g @catppuccin_window_current_text "#W"

          set -g @catppuccin_status_modules_right "directory user host session"
          set -g @catppuccin_status_left_separator  " "
          set -g @catppuccin_status_right_separator ""
          set -g @catppuccin_status_right_separator_inverse "no"
          set -g @catppuccin_status_fill "icon"
          set -g @catppuccin_status_connect_separator "no"
          set -g @catppuccin_flavour 'macchiato' # or frappe, macchiato, mocha
          set -g @catppuccin_directory_text "#{pane_current_path}"

        '';
      }
    ];
    extraConfig = ''
      set -ga terminal-overrides ",xterm-256color:Tc"

      # split panes using | and -
      unbind %
      unbind '"'
      bind \\ split-window -h
      bind - split-window -v

      # switch panes using Alt-arrow without prefix
      bind -n M-h select-pane -L
      bind -n M-l select-pane -R
      bind -n M-k select-pane -U
      bind -n M-j select-pane -D

      set-option -g status-interval 5
      set-option -g automatic-rename on
    '';
  };
}
