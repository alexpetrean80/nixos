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
    linuxKernel.packages.linux_6_1.xpadneo
    linuxKernel.packages.linux_6_1.new-lg4ff
  ];

  # hardware.xpadneo.enable = true;
}
