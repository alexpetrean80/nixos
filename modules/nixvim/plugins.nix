{...}: {
  imports = [
    ./plugins/lsp.nix
    ./plugins/lspsaga.nix
    ./plugins/mini.nix
    ./plugins/noice.nix
    ./plugins/none-ls.nix
    ./plugins/nvim-cmp.nix
    ./plugins/refactoring.nix
    ./plugins/telescope.nix
    ./plugins/treesitter.nix
    ./plugins/which-key.nix
  ];

  programs.nixvim.plugins = {
    gitblame.enable = true;
    gitsigns.enable = true;
    luasnip.enable = true;
    cmp-nvim-lsp.enable = true;
    rainbow-delimiters.enable = true;
    lsp-format.enable = true;
  };
}
