{lib, ...}: {
  programs.kitty = {
    enable = true;
    extraConfig = ''
      ${lib.readFile ../../../config/kitty/colors.conf}
      ${lib.readFile ../../../config/kitty/kitty.conf}
    '';
  };
}
