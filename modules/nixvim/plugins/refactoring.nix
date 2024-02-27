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
      action = "<cmd>lua require('refactoring').select_refactor()<CR>";
      key = "<leader>R";
      options = getOpts "Refactoring";
      mode = ["n" "v"];
    }
  ];
}
