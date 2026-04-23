{
  config,
  lib,
  ...
}:
with lib; let
  cfg = config.dotHypr;
in {
  options.dotHypr.safeEyes = mkEnableOption "safeEyes";
  config = mkIf cfg.safeEyes {
    services.safeeyes.enable = true;
  };
}
