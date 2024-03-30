{...}: let
  getOpts = import ../utils/getKeymapOpts.nix;
in {
  programs.nixvim.plugins.lspsaga = {
    enable = true;
    diagnostic.diagnosticOnlyCurrent = true;
    implement = {
      enable = true;
      sign = true;
      virtualText = true;
    };
  };

  programs.nixvim.keymaps = [
    {
      action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
      key = "<leader>ldn";
      options = getOpts "Next diagnostic";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga diagnostic_jump_prev<CR>";
      key = "<leader>ldp";
      options = getOpts "Previous diagnostic";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga show_workspace_diagnostics<CR>";
      key = "<leader>ldd";
      options = getOpts "Show workspace diagnostics";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga hover_doc<CR>";
      key = "<leader>lh";
      options = getOpts "Hover";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga outline<CR>";
      key = "<leader>lo";
      options = getOpts "Outline";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga rename<CR>";
      key = "<leader>r";
      options = getOpts "Rename";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga incoming_calls<CR>";
      key = "<leader>lci";
      options = getOpts "Show incoming calls";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga outgoing_calls<CR>";
      key = "<leader>lco";
      options = getOpts "Show outgoing calls";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga code_action<CR>";
      key = "<leader>c";
      options = getOpts "Code action";
      mode = "n";
    }

    {
      action = "<cmd>Lspsaga peek_definition<CR>";
      key = "<leader>lpd";
      options = getOpts "Peek definition";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga peek_type_definition<CR>";
      key = "<leader>lpt";
      options = getOpts "Peek type definition";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga finder def<CR>";
      key = "<leader>lfd";
      options = getOpts "Find definitions";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga finder ref<CR>";
      key = "<leader>lfr";
      options = getOpts "Find references";
      mode = "n";
    }
    {
      action = "<cmd>Lspsaga finder imp<CR>";
      key = "<leader>lfi";
      options = getOpts "Find implementations";
      mode = "n";
    }
  ];
}
