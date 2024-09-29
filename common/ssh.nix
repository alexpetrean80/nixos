{...}: {

  services.openssh = {
    enable = true;
    ports = [22];
    settings = {
      PasswordAuthentication = true;
      AllowUsers = ["alexp"];
      UseDns = true;
      X11Forwarding = false;
      PermitRootLogin = "no";
    };
  };
  }
