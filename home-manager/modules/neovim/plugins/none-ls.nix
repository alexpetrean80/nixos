{...}: {
  programs.nixvim.plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    sources = {
      diagnostics = {
        flake8.enable = true;
        golangci_lint.enable = true;
        luacheck.enable = true;
        markdownlint.enable = true;
        shellcheck.enable = true;
        yamllint.enable = true;
      };
      formatting = {
        alejandra.enable = true;
        black.enable = true;
        eslint.enable = true;
        goimports.enable = true;
        golines.enable = true;
        isort.enable = true;
        jq.enable = true;
        markdownlint.enable = true;
        prettier = {
          enable = true;
          disableTsServerFormatter = true;
        };
        rustfmt.enable = true;
        shfmt.enable = true;
        stylua.enable = true;
      };
    };
  };
}
