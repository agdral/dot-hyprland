{
  pkgs,
  lib,
  ...
}: {
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
        RestartSec = 3;
        TimeoutStopSec = 10;
      };
      Install = {
        WantedBy = ["graphical-session.target"];
      };
    };
  };
}
