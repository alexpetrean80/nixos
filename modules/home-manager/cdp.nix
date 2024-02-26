{ inputs, lib, config, pkgs, ... }:

{
  xdg.configFile.cdp = {
    recursive = true;
    source = ../../config/cdp;
  };
}
