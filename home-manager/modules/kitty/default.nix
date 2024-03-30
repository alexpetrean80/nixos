{lib, ...}: {
  programs.kitty = {
    enable = true;
    extraConfig = ''
      ${lib.readFile ./config/colors.conf}
      ${lib.readFile ./config/kitty.conf}
    '';
  };
}
