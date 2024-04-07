{pkgs, lib,...}: {
  services.xserver = {
    displayManager.gdm.enable = true;

    desktopManager.gnome = {
      enable = true;
      extraGSettingsOverridePackages = [pkgs.gnome.mutter];
      extraGSettingsOverrides = ''
        [org.gnome.mutter]
        experimental-features=['scale-monitor-framebuffer']
      '';
    };
  };

  environment.systemPackages = with pkgs.gnome; [
    gnome-tweaks
    gnome-shell-extensions
  ];

  environment.gnome.excludePackages = (with pkgs; [
    gnome-tour
    xterm
    epiphany
    gnome-connections
  ]) ++ (with pkgs.gnome; [
    gnome-maps
    gnome-weather
    gnome-music
  ]);
  programs.ssh.askPassword = lib.mkForce "${pkgs.gnome.seahorse}/libexec/seahorse/ssh-askpass";
}
