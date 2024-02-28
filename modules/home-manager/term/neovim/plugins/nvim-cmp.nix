{...}: {
  programs.nixvim.plugins.nvim-cmp = {
    enable = true;
    autoEnableSources = true;
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
}
