{pkgs, ...}: {
  home.packages = [pkgs.pyprland];
  home.file = {
    ".config/hypr/pyprland.toml".text = ''
      [pyprland]
      plugins = ["magnify"]

      [pyprland.variables]
      term_classed = "kitty --class"
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
        ExecStart = "${pkgs.pyprland}/bin/pypr";
        ExecReload = "${pkgs.pyprland}/bin/pypr reload";
        Restart = "on-failure";
        RestartSec = 3;
        TimeoutStopSec = 10;
      };
      Install = {
        WantedBy = ["graphical-session.target"];
      };
    };
  };
}
