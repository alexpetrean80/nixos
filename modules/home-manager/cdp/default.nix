{
  lib,
  pkgs,
  ...
}: let
  cdp = pkgs.buildGoModule {
    pname = "cdp";
    version = "latest";

    src = pkgs.fetchFromGitHub {
      owner = "alexpetrean80";
      repo = "cdp";
      rev = "main";
      hash = "sha256-OBSci+cuDJ8TshsKWao/cRbM70iIc7Nu4RpLXFygOwg=";
    };

    vendorHash = "sha256-fxP9qgEPHrjCwSxy5SUSeYtEln3zXXBHBztLaOz9U3k=";

    meta = with lib; {
      homepage = "https://github.com/alexpetrean80/cdp";
      license = licenses.mit;
    };
  };
in {
  home.packages = [cdp];

  xdg.configFile."cdp/config.yaml" = {
    text = lib.readFile ./config/config.yaml;
  };
}
