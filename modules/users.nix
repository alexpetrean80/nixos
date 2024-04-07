{pkgs, ...}: {
  users.users = {
    alexp = {
      isNormalUser = true;
      description = "Alex Petrean";
      extraGroups = ["networkmanager" "wheel" "docker" "libvirtd"];
      shell = pkgs.zsh;
    };
    iul = {
      isNormalUser = true;
      description = "Iulia";
      extraGroups = ["wheel" "networkmanager"];
      shell = pkgs.zsh;
    };
  };
}
