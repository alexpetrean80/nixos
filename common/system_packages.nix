{pkgs, ...}: {
  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    firefox
    obsidian
    wget
    sqlite
    zip
    unzip
    home-manager
    nerdfonts
    synology-drive-client
    keyd
    xwaylandvideobridge
  ];
}
