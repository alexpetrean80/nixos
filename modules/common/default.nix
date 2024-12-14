{ pkgs, ... }: {
  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    wget
    sqlite
    zip
    unzip
    fzf
    gnupg
    ripgrep
    fd
    eza
    glow
    bat
    neovim
    neofetch
    nixd
    httpie
    cmake
    gnumake
    gcc
    rustup
    nodejs_20
    python3
    chezmoi
    python312Packages.pip
    go
    fnm
    postgresql
    lazygit
    git
    tmux
    tmux-sessionizer
    elixir
    htop
    gh
    gh-dash
  ];
}
