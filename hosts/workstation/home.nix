{...}: {
  imports = [
    ../../modules/home-manager/git.nix
    ../../modules/home-manager/tmux.nix
    ../../modules/home-manager/cdp.nix
    ../../modules/home-manager/packages.nix
    ../../modules/home-manager/nixvim.nix
    ../../modules/home-manager/wezterm.nix
    ../../modules/home-manager/kitty.nix
    ../../modules/home-manager/hyprland.nix
    ../../modules/home-manager/linuxcommon.nix
    ../../modules/home-manager/starship.nix
    ../../modules/home-manager/zsh.nix
  ];

  home.stateVersion = "24.05";
}
