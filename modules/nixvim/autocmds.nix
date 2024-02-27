{...}: {
  programs.nixvim.autoCmd = [
    {
      event = ["TextYankPost"];
      pattern = ["*"];
      callback = {
        __raw = "function() vim.highlight.on_yank({higroup = 'IncSearch', timeout = '1000'}) end";
      };
    }
    {
      event = ["BufWritePre"];
      pattern = "";
      command = ":%s/\\s\\+$//e";
    }
    {
      event = ["BufEnter"];
      pattern = "";
      command = "set fo-=c fo-=r fo-=o";
    }
    {
      event = ["Filetype"];
      pattern = ["xml" "html" "xhtml" "css" "scss" "javascript" "typescript" "yaml" "lua"];
      command = "setlocal shiftwidth=2 tabstop=2";
    }
    {
      event = ["Filetype"];
      pattern = ["gd" "gdscript" "gdscript3"];
      command = "setlocal shiftwidth=4 tabstop=4";
    }
  ];
}
