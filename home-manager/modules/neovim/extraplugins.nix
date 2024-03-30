{
  pkgs,
  lib,
  ...
}: {
  programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
    vim-sandwich
    lualine-nvim
  ];
  programs.nixvim.extraConfigLua = ''
    ${lib.readFile ./config/lualine.lua}
  '';
}
