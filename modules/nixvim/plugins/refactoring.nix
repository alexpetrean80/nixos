{...}: let
  getOpts = import ../utils/getKeymapOpts.nix;
in {
  programs.nixvim.plugins.refactoring = {
    enable = true;
    promptFuncParamType = {
      go = true;
      java = true;
      cpp = true;
      c = true;
      h = true;
      hpp = true;
      cxx = true;
    };
    promptFuncReturnType = {
      go = true;
      java = true;
      cpp = true;
      c = true;
      h = true;
      hpp = true;
      cxx = true;
    };
  };

  programs.nixvim.keymaps = [
    {
      action = {__raw = "require('refactoring').select_refactor()";};
      lua = true;
      key = "<leader>R";
      mode = ["n" "v"];
      options = getOpts "Refactoring";
    }
  ];
}
