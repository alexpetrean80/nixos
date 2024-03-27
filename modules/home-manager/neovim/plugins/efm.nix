{...}: {
  programs.nixvim.plugins.efmls-configs = {
    enable = true;
    setup = {
      bash = {
        formatter = "shfmt";
        linter = "shellcheck";
      };
      c = {
        formatter = "clang_format";
        linter = "cppcheck";
      };
      "c++" = {
        formatter = "clang_format";
        linter = "cppcheck";
      };
      docker = {
        linter = "hadolint";
      };
      gitcommit = {
        linter = "gitlint";
      };
      go = {
        formatter = ["gofmt" "goimports" "golines"];
        linter = "golangci_lint";
      };
      html = {
        formatter = "prettier";
      };
      javascript = {
        formatter = "prettier";
        linter = "eslint";
      };
      # javascriptreact = {
      #   formatter = "prettier";
      #   # linter = "eslint";
      # };
      json = {
        formatter = "jq";
        linter = "jq";
      };
      lua = {
        formatter = "stylua";
        linter = "luacheck";
      };
      make = {
        linter = "checkmake";
      };
      markdown = {
        formatter = "mdformat";
        linter = "markdownlint";
      };
      nix = {
        formatter = "nixfmt";
        # linter = "statix";
      };
      python = {
        formatter = "black";
        linter = "flake8";
      };
      sh = {
        formatter = "shfmt";
        linter = "shellcheck";
      };
      sql = {
        formatter = "sql-formatter";
        linter = "sqlfluff";
      };
      terraform = {
        formatter = "terraform_fmt";
      };
      toml = {
        formatter = "taplo";
      };
      typescript = {
        formatter = "prettier";
        linter = "eslint";
      };
      # typescriptreact = {
      #   formatter = "prettier";
      #   # linter = "eslint";
      # };
      yaml = {
        formatter = "prettier";
        linter = "yamllint";
      };
    };
  };
}
