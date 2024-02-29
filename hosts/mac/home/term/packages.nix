{pkgs, ...}: {
  home.packages = with pkgs; [
    aws-vault
    postgresql_16
    snyk
    teleport
    terraform
    tilt
    confluent-cli
    jdk17
    darwin.CF
    darwin.Libc
    darwin.Security
  ];
}
