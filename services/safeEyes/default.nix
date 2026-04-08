{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.dotHypr;
in {
  options.dotHypr.safeEyes = mkEnableOption "safeEyes";
  config = mkIf cfg.safeEyes {
    systemd.user.services = {
      safeeyes = {
        Unit = {
          Description = "safeeyes";
          After = ["graphical-session.target"];
          Requisite = ["graphical-session.target"];
          ConditionEnvironment = ["HYPRLAND_INSTANCE_SIGNATURE"];
        };
        Service = {
          Type = "simple";
          ExecStart = "${lib.getExe pkgs.safeeyes} -e";
          Restart = "no";
        };
        Install = {
          WantedBy = ["graphical-session.target"];
        };
      };
    };
  };
}
