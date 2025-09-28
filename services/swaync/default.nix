{
  services.swaync = {
    enable = true;
    settings = builtins.readFile ./dot/config.json;
    style = builtins.readFile ./dot/style.css;
  };
}
