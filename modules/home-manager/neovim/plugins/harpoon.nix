{...}: let
  getOpts = import ../utils/getKeymapOpts.nix;
in {
  programs.nixvim = {
    plugins.harpoon = {
      enable = true;
      enableTelescope = true;
    };

    keymaps = [
      {
        action = "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>";
        key = "<leader>hh";
        options = getOpts "Menu";
        mode = "n";
      }
      {
        action = "<cmd>lua require('harpoon.ui').nav_next()<CR>";
        key = "<leader>hn";
        options = getOpts "Next";
        mode = "n";
      }
      {
        action = "<cmd>lua require('harpoon.ui').nav_prev()<CR>";
        key = "<leader>hp";
        options = getOpts "Previous";
        mode = "n";
      }
      {
        action = "<cmd>lua require('harpoon.mark').toggle_file()<CR>";
        key = "<leader>ht";
        options = getOpts "Toggle file";
        mode = "n";
      }
    ];
  };
}
