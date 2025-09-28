{
  services.swaync = {
    enable = true;
    settings = builtins.toJSON (import ./dot/config.json);
    style = builtins.readFile ./dot/style.css;
  };
}
