{...}: {
  services.xserver = {
    enable = true;
    displayManager.sddm.enable = true;
    xkb = {
      layout = "us";
      variant = "";
      options = "esc:swapcaps";
    };
  };
}
