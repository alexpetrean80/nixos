{
  pkgs,
  lib,
  ...
}: {
  programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
    vim-sandwich
    lualine-nvim
    nvim-cmp
    cmp-nvim-lua
    cmp-nvim-lsp
    luasnip
    cmp_luasnip
  ];
  programs.nixvim.extraConfigLua = ''
    ${lib.readFile ./config/lualine.lua}
    ${lib.readFile ./config/cmp.lua}
  '';
}
