{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    enableExtensionUpdateCheck = true;
    enableUpdateCheck = true;
    extensions = with pkgs.vscode-extensions; [
      golang.go
      vscodevim.vim
      catppuccin.catppuccin-vsc
      catppuccin.catppuccin-vsc-icons
      ms-toolsai.jupyter
    ];
  };
}
