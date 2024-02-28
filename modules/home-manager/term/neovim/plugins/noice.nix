{...}: {
  programs.nixvim.plugins.noice = {
    enable = true;
    lsp = {
      override = {
        "vim.lsp.util.convert_input_to_markdown_lines" = true;
        "vim.lsp.util.stylize_markdown" = true;
        "cmp.entry.get_documentation" = true;
      };
      progress.enabled = true;
    };
    presets = {
      command_palette = true;
      inc_rename = true;
      lsp_doc_border = true;
      bottom_search = false;
      long_message_to_split = true;
      indent_blankline = {
        enabled = true;
        scope_color = "lavender";
        colored_indent_levels = true;
      };
    };
  };
}
