{ inputs, lib, config, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      palette = "catppuccin_mocha";
      command_timeout = 5000;
      character = {
        success_symbol = "[[♥](green) ❯](maroon)";
        error_symbol = "[❯](red)";
        vimcmd_symbol = "[❮](green)";
      };
      directory = {
        truncation_length = 4;
        read_only = " 󰌾";
        style = "bold lavender";
      };
    };
  };
}
