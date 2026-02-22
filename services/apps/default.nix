{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.dotHypr;
in {
  options.dotHypr.apps = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.apps {
    services = {
      hyprpolkitagent.enable = true;
    };
  };
}
