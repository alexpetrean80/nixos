{pkgs, ...}: {
  home.packages = with pkgs; [
    fzf
    gh
    ripgrep
    fd
    eza
    httpie
    glow
    lazygit
    bat
    cmake
    gnumake
    gcc
    rustup
    nodejs_20
    python3
    go
    fnm
    octaveFull
  ];
}