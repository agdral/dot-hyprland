{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.dotHypr;
in {
  options.dotHypr.vicinae = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.vicinae {
    home.packages = [pkgs.vicinae];

    systemd.user.services = {
      vicinae = {
        Unit = {
          Description = "Vicinae";
          After = ["graphical-session.target"];
          Requisite = ["graphical-session.target"];
          ConditionEnvironment = ["HYPRLAND_INSTANCE_SIGNATURE"];
        };
        Service = {
          Type = "simple";
          ExecStart = "${lib.getExe pkgs.vicinae} server";
          Restart = "on-failure";
          RestartSec = 3;
          TimeoutStopSec = 10;
        };
        Install = {
          WantedBy = ["graphical-session.target"];
        };
      };
    };
  };
}
