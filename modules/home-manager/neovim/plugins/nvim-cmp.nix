{...}: {
  programs.nixvim.plugins = {
    nvim-cmp = {
      enable = true;
      sources = [
        {name = "nvim_lsp";}
        {name = "luasnip";}
        {name = "path";}
        {name = "buffer";}
      ];
      mapping = {
        "<CR>" = "cmp.mapping.confirm({select = true})";
        "<Tab>" = {
          action = ''
            function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              else
                fallback()
              end
            end
          '';
          modes = ["i" "s"];
        };
        "<S-Tab>" = {
          action = ''
            function(fallback)
              if cmp.visible() then
                cmp.select_prev_item()
              else
                fallback()
              end
            end
          '';
          modes = ["i" "s"];
        };
      };
    };
    luasnip = {
      enable = true;
      extraConfig = {enable_autosnippets = true;};
    };
    cmp_luasnip.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lua.enable = true;
    cmp-nvim-lsp-document-symbol.enable = true;
  };
}
