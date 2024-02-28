{pkgs, ...}: {
  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    firefox
    wget
    sqlite
    zip
    unzip
    home-manager
    flatpak # TODO check in some months that steam works as a native package
    linuxKernel.packages.linux_6_1.xpadneo
    playerctl
  ];

  hardware.xpadneo.enable = true;

  services.flatpak.enable = true;
}
