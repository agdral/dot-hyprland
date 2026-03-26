{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.dotHypr;
in {
  options.dotHypr.apps = mkEnableOption "apps";
  config = mkIf cfg.apps {
    services = {
      hyprpolkitagent.enable = true;
    };
  };
}
