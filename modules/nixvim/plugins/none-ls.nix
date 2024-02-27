{...}: {
  programs.nixvim.plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    sources = {
      code_actions = {
        eslint.enable = true;
        shellcheck.enable = true;
      };
      diagnostics = {
        eslint.enable = true;
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
