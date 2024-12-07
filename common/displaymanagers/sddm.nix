{ pkgs, ... }: {
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    theme = "catppuccin-sddm";
  };

  environment.systemPackages = with pkgs; [ catppuccin-sddm ];
}
