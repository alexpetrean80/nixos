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
    colorschemes.base16 = {
      enable = true;
      colorscheme ="catppuccin-mocha";
    };
    globals = {
      mapleader = " ";
    };
  };
}
