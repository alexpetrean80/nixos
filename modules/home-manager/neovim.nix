{ inputs, lib, config, pkgs, ... }:

let
  utils = with pkgs; [
    fzf
    fd
    ripgrep
  ];
  lsps = with pkgs; [
    rnix-lsp
    gopls
    nodePackages.bash-language-server
  ];
in
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    withPython3 = true;
    extraPackages = utils ++ lsps;
  };

  xdg.configFile.nvim = {
    recursive = true;
    source = ../../config/nvim;
  };
}
