#
# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{
  config,
  pkgs,
  lib,
  ...
}: {
  imports = [
    # Include the results of the hardware scan.

    ../../modules
    ./hardware-configuration.nix
  ];
  boot.loader.grub = {
    enable = lib.mkForce true;
    device = "/dev/sda";
    useOSProber = true;
  };

  networking.hostName = "dasnixbox";


  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;

  programs.mosh.enable = true;

  services = {
    openssh = {
      enable = true;
      ports = [22];
      settings = {
        PasswordAuthentication = true;
        AllowUsers = ["alexp"];
        UseDns = true;
        PermitRootLogin = "no";
      };
    };
  };

  system.stateVersion = "24.05"; # Did you read the comment?
}
