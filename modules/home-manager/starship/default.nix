{lib, ...}: {
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = lib.importTOML ./config/starship.toml;
  };
}
