{inputs, ...}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./options.nix
    ./config.nix
    ./extraplugins.nix
    ./keymaps.nix

    ./plugins
  ];

  programs.nixvim = {
    enable = true;
    enableMan = true;
    colorschemes.catppuccin = {
      enable = true;
    };
    globals = {
      mapleader = " ";
    };
  };
}
