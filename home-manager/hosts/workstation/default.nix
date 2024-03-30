{...}: {
  imports = [
    ../../modules
    ../../modules/cdp
    ../../modules/git
    ../../modules/gnome
    ../../modules/kitty
    ../../modules/neovim
    ../../modules/tmux
    ../../modules/wezterm
    ../../modules/vscode
    ../../modules/starship
    ../../modules/zsh
    ../../modules/packages.nix
  ];

  home = {
    username = "alexp";
    homeDirectory = "/home/alexp";
    stateVersion = "24.05";
  };
}
