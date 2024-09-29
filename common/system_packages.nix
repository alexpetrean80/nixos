{pkgs, ...}: {
  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    wget
    sqlite
    zip
    unzip
    home-manager
  ];
}
