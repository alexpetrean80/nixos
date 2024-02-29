{...}: let
  getOpts = import ../utils/getKeymapOpts.nix;
in {
  programs.nixvim.plugins.mini = {
    enable = true;
    modules = {
      surround = {};
      files = {};
      pairs = {};
    };
  };
  programs.nixvim.keymaps = [
    {
      action = "<cmd>lua MiniFiles.open()<CR>";
      key = "<leader>e";
      options = getOpts "Explorer";
      mode = "n";
    }
  ];
}
