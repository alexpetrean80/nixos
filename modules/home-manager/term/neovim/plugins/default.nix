{...}: {
  imports = [
    ./indent_blankline.nix
    ./lsp.nix
    ./lspsaga.nix
    ./mini.nix
    ./noice.nix
    ./none-ls.nix
    ./nvim-cmp.nix
    ./refactoring.nix
    ./telescope.nix
    ./treesitter.nix
    ./which-key.nix
  ];

  programs.nixvim.plugins = {
    gitblame.enable = true;
    gitsigns.enable = true;
    luasnip.enable = true;
    comment-nvim.enable = true;
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
