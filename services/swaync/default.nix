{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.dotHypr;
in {
  options.dotHypr.swaync = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.swaync {
    services.swaync = {
      enable = true;
      settings = builtins.readFile ./dot/config.json;
      style = builtins.readFile ./dot/style.css;
    };
  };
}
