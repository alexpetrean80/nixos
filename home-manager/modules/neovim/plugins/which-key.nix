{...}: {
  programs.nixvim.plugins.which-key = {
    enable = true;
    registrations = {
      "<leader>b" = "Buffers";
      "<leader>l" = "LSP";
      "<leader>lc" = "Calls";
      "<leader>ld" = "Diagnostics";
      "<leader>lf" = "Find";
    };
    window = {
      margin = {
        top = 1;
        right = 0;
        bottom = 0;
        left = 1;
      };
      border = "single";
    };
    layout = {
      height = {
        min = 4;
        max = 150;
      };
      align = "left";
    };
  };
}
