{pkgs, ...}: {
  home.packages = with pkgs; [
    gnupg1compat
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
    gcc
    rustup
    nodejs_20
    python3
    go
    fnm
    aws-vault
  ];
}
