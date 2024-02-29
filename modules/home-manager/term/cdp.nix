{lib, ...}: {
  xdg.configFile."cdp/config.yaml" = {
    text = lib.readFile ../../../config/cdp/config.yaml;
  };
}
