{ inputs, lib, config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Alex Petrean";
    userEmail = "alex_petrean@icloud.com";
  };
}
