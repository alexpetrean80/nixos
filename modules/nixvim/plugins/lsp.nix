{...}: {
  programs.nixvim.plugins.lsp = {
    enable = true;
    servers = {
      bashls.enable = true;
      ccls.enable = true;
      dockerls.enable = true;
      eslint.enable = true;
      gopls.enable = true;
      helm-ls.enable = true;
      html.enable = true;
      jsonls.enable = true;
      lua-ls.enable = true;
      marksman.enable = true;
      nil_ls.enable = true;
      pyright.enable = true;
      rust-analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
      terraformls.enable = true;
      tsserver.enable = true;
      yamlls.enable = true;
    };
  };
}
