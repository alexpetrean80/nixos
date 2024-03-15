{pkgs, ...}: {
  home.packages = with pkgs; [
    fzf
    gh
    ripgrep
    fd
    eza
    httpie
    glow
    bat
    cmake
    gnumake
    neofetch
    gcc
    rustup
    nodejs_20
    python3
    go
    fnm
    gnupg
    poetry
  ];
}