{...}: {
  programs.git.includes = [
    {
      condition = "gitdir:~/Repos/snyk/";
      contents = {
        user = {
          email = "alex-tudor.petrean@snyk.io";
          signingkey = "E51D11C1C401B8F1FA26DA7301D2E393ABC8B299";
        };
      };
    }
  ];
}
