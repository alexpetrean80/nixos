{inputs, ...}: {
  imports = [
    # For home-manager
    inputs.nixvim.homeManagerModules.nixvim
    ../nixvim/options.nix
    ../nixvim/plugins.nix
    ../nixvim/config.nix
    ../nixvim/extraplugins.nix
    ../nixvim/keymaps.nix
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
