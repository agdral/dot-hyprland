{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.dotHypr;
in {
  options.dotHypr.safeeyes = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.safeEyes {
    systemd.user.services = {
      safeeyes = {
        Unit = {
          Description = "safeeyes";
          After = ["graphical-session.target"];
          Requisite = ["graphical-session.target"];
        };
        Service = {
          Type = "simple";
          ExecStart = "${lib.getExe pkgs.safeeyes} -e";
          Restart = "no";
        };
        Install = {
          WantedBy = ["timers.target"];
        };
      };
    };

    systemd.user.timers.safeeyes = {
      Unit = {
        Description = "Run Safe Eyes daily at 09:00";
      };
      Timer = {
        OnCalendar = "*-*-* 09:00:00";
        Persistent = true;
        Unit = "safeeyes.service";
      };
      Install = {
        WantedBy = ["timers.target"];
      };
    };
  };
}
