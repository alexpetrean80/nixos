{ inputs, lib, config, pkgs, ... }:

{
  xdg.configFile.cdp."config.yaml" = {
    text = ''
      editor: nvim
      multiplexer: tmux

      source:
        # Directories containing the project in your HOME
        dirs:
          - Repos
        # Markers to identify the project root
        project_markers:
          - .git
          - node_modules
          - go.mod
    '';
  };
}
