{...}: {
  imports = [
    ./copilot.nix
    ./efm.nix
    ./harpoon.nix
    ./indent_blankline.nix
    ./lsp.nix
    ./lspsaga.nix
    ./mini.nix
    ./noice.nix
    ./nvim-cmp.nix
    ./refactoring.nix
    ./telescope.nix
    ./treesitter.nix
    ./which-key.nix
  ];

  programs.nixvim.plugins = {
    gitblame.enable = true;
    gitsigns.enable = true;
    fugitive.enable = true;
    neogit.enable = true;
    comment.enable = true;
    neocord.enable = true;
    helm.enable = true;
    notify.enable = true;
    rainbow-delimiters.enable = true;
    lsp-format.enable = true;
  };
}
