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
      hash = "sha256-/WMEPwN1DQGN+Y3lJOiUiPV0LKZZbiWJ4ZJXYZ8NmXw=";
    };
      # keep this because when updating CDP we need a new vendor hash and 
      # it can only be found by specifying one that is completely wrong (not one from a prev derivation)
      # vendorHash = "sha256-/AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
      vendorHash = "sha256-0kkZdotONr28lPCCZrX/O3GunKEXUXWaSIF77EjgbGc=";


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
