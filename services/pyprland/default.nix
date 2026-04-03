{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.dotHypr;
in {
  options.dotHypr.pyprland = mkEnableOption "pyprland";
  config = mkIf cfg.pyprland {
    home.packages = [pkgs.pyprland];
    home.file = {
      ".config/pypr/config.toml".text = ''
        [pyprland]
        plugins = ["magnify"]
      '';
    };

    systemd.user.services = {
      pyprland = {
        Unit = {
          Description = "Pyprland";
          After = ["graphical-session.target"];
          Requisite = ["graphical-session.target"];
          ConditionEnvironment = ["HYPRLAND_INSTANCE_SIGNATURE"];
        };
        Service = {
          Type = "simple";
          ExecStart = lib.getExe pkgs.pyprland;
          ExecReload = "${lib.getExe pkgs.pyprland} reload";
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
