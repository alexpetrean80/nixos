{ pkgs, ... }: {
  imports = [ ../displaymanagers/sddm.nix ];

  services = {
    desktopManager.plasma6.enable = true;
    keyd = {
      enable = true;
      keyboards = {
        default = {
          ids = [ "*" ];
          settings = {
            main = {
              capslock = "esc";
              esc = "capslock";
            };
          };
        };
      };
    };
  };

  programs.kdeconnect.enable = true;

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    elisa
  ];

  programs.dconf.enable = true;
}
