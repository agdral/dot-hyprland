{pkgs, ...}: {
  home.packages = [pkgs.walker];
  home.file = {
    ".config/walker/config.toml".source = ./dot/config.toml;
    ".config/walker/themes/vault.css".source = ./dot/themes/vault.css;
    ".config/walker/themes/vault.toml".source = ./dot/themes/vault.toml;
  };
  services.walker.enable = true;
}
