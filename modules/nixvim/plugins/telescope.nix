{...}: let
  getOpts = import ../utils/getKeymapOpts.nix;
in {
  programs.nixvim.plugins.telescope = {
    enable = true;
    extensions.fzf-native.enable = true;
  };
  programs.nixvim.keymaps = [
    {
      action = "<cmd>Telescope find_files<CR>";
      key = "<leader> ";
      options = getOpts "Find files";
      mode = "n";
    }
    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>/";
      options = getOpts "Grep";
      mode = "n";
    }
    {
      action = "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find({ previewer = false })<CR>";
      key = "<leader>F";
      options = getOpts "Fuzzy find";
      mode = "n";
    }
    {
      action = "<cmd>Telescope buffers<CR>";
      key = "<leader>bb";
      options = getOpts "Buffers";
      mode = "n";
    }
  ];
}
