{...}: {
  programs.nixvim.plugins = {
    nvim-cmp = {
      enable = true;
      autoEnableSources = true;
      sources = [
        {name = "nvim_lsp";}
        {name = "luasnip";}
        {name = "path";}
        {name = "buffer";}
        {name = "copilot";}
      ];
      snippet.expand = "luasnip";
      mapping = {
        "<CR>" = "cmp.mapping.confirm({select = true})";
        "<Tab>" = {
          action = ''
            function(fallback)
              local luasnip = require 'luasnip'
              if cmp.visible() then
                cmp.select_next_item()
              elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
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
              local luasnip = require 'luasnip'
              if cmp.visible() then
                cmp.select_prev_item()
              elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
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
