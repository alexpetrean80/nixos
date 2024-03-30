{...}: let
  getOpts = import ./utils/getKeymapOpts.nix;
in {
  programs.nixvim.keymaps = [
    # move around splits
    {
      action = "<C-w>h";
      key = "<C-h>";
      options = {silent = true;};
      mode = "n";
    }
    {
      action = "<C-w>j";
      key = "<C-j>";
      options = {silent = true;};
      mode = "n";
    }
    {
      action = "<C-w>k";
      key = "<C-k>";
      options = {silent = true;};
      mode = "n";
    }
    {
      action = "<c-w>l";
      key = "<c-l>";
      options = {silent = true;};
      mode = "n";
    }
    # stay in indent mode
    {
      action = "<gv";
      key = "<";
      options = {silent = true;};
      mode = "v";
    }
    {
      action = ">gv";
      key = ">";
      options = {silent = true;};
      mode = "v";
    }
    # splits
    {
      action = "<cmd>vsp<CR>";
      key = "<leader>\\";
      options = getOpts "Vertical split";
      mode = "n";
    }
    {
      action = "<cmd>sp<CR>";
      key = "<leader>-";
      options = getOpts "Horizontal split";
      mode = "n";
    }
    # buffers
    {
      action = "<cmd>bnext<CR>";
      key = "<leader>bn";
      options = getOpts "Next";
      mode = "n";
    }
    {
      action = "<cmd>bprevious<CR>";
      key = "<leader>bp";
      options = getOpts "Previous";
      mode = "n";
    }
    {
      action = "<cmd>bd<CR>";
      key = "<leader>bd";
      options = getOpts "Delete";
      mode = "n";
    }
    {
      action = "<cmd>lua vim.lsp.buf.format({async=true})<CR>";
      key = "<leader>f";
      options = getOpts "Format";
      mode = "n";
    }
    {
      action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
      key = "<leader>a";
      options = getOpts "Code action";
      mode = "n";
    }
  ];
}
