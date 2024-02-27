{...}: {
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    enableVteIntegration = true;

    initExtra = ''
      export GOPATH="$HOME/go/"
      export PATH="$GOPATH:$HOME/.local/share/npm/bin:$HOME/.local/share/fnm:$HOME/.cargo/bin:$GOPATH/bin:$HOME/.local/bin:$PATH"
    '';

    shellAliases = {
      lzg = "lazygit";
      ls = "eza -lgh";
      dc = "docker compose";
      dcu = "docker compose up";
      dce = "docker compose exec";
      dcb = "docker compose build";
      dcd = "docker compose down";
      dcr = "docker compose run";
    };
    antidote = {
      enable = true;
      plugins = [
        "ohmyzsh/ohmyzsh path:plugins/brew"
        "ohmyzsh/ohmyzsh path:plugins/fzf"
        "ohmyzsh/ohmyzsh path:plugins/zsh-interactive-cd"
        "ohmyzsh/ohmyzsh path:plugins/command-not-found"
      ];
    };
  };
}
