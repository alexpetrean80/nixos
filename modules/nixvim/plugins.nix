{...}: {
  imports = [
    ./plugins/indent_blankline.nix
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
    comment-nvim.enable = true;
    gitsigns.enable = true;
    luasnip.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lua.enable = true;
    cmp-nvim-lsp-document-symbol.enable = true;
    cmp_luasnip.enable = true;
    helm.enable = true;
    notify.enable = true;
    rainbow-delimiters.enable = true;
    lsp-format.enable = true;
  };
}
