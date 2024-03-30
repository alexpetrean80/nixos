{pkgs, ...}: {
  home.packages = with pkgs.gnomeExtensions; [
    appindicator
    blur-my-shell
    caffeine
    gsconnect
    # user-themes
  ];
}
