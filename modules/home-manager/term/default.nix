{...}: {
  imports = [
    ./cdp.nix
    ./git.nix
    ./packages.nix
    ./starship.nix
    ./tmux.nix
    ./zsh.nix
    ./lazygit.nix

    ./neovim
  ];
}
