{...}: let
  indent = 2;
in {
  programs.nixvim.options = {
    number = true;
    relativenumber = false;
    autoindent = true;
    expandtab = true;
    shiftwidth = indent;
    smartindent = true;
    softtabstop = indent;
    tabstop = indent;
    shiftround = true;
    hlsearch = true;
    ignorecase = true;
    smartcase = true;
    wildmenu = true;
    cursorline = true;
    laststatus = 2;
    lazyredraw = false;
    list = true;
    listchars = {
      tab = "┊ ";
      trail = "·";
      extends = "»";
      precedes = "«";
      nbsp = "×";
    };
    cmdheight = 0;
    mouse = "a";
    scrolloff = 18;
    sidescrolloff = 3;
    signcolumn = "yes";
    splitbelow = true;
    splitright = true;
    wrap = true;
    backup = false;
    swapfile = false;
    writebackup = false;
    completeopt = ["menu" "menuone" "noselect"];
    showmode = false;
    history = 100;
    redrawtime = 1500;
    timeoutlen = 250;
    ttimeoutlen = 10;
    updatetime = 100;
    termguicolors = true;
    undofile = true;
    undolevels = 1000;
    undoreload = 10000;
    foldmethod = "marker";
    foldlevel = 99;
  };
}
