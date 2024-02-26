{ inputs, lib, config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    enableVteIntegration = true;

    shellAliases = {
      lzg = "lazygit";
      ls = "eza -lgh";
    };
    antidote = {
      enable = true;
      plugins = [
        "ohmyzsh/ohmyzsh path:plugins/brew"
        "ohmyzsh/ohmyzsh path:plugins/fzf"
        "ohmyzsh/ohmyzsh path:plugins/zsh-interactive-cd"
        "ohmyzsh/ohmyzsh path:plugins/command-not-found"
      ];
    };
  };
}
