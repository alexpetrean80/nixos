{...}: {
  programs.nixvim.plugins.which-key = {
    enable = true;
    registrations = {
      "<leader>b" = "Buffers";
      "<leader>l" = "LSP";
    };
  };
}
