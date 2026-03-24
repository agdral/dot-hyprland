{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.dotHypr;
in {
  options.dotHypr.swaync = mkEnableOption "swaync";
  config = mkIf cfg.swaync {
    services.swaync = {
      enable = true;
      settings = builtins.readFile ./dot/config.json;
      style = builtins.readFile ./dot/style.css;
    };
  };
}
