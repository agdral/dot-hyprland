{
  pkgs,
  lib,
  ...
}: {
  home.packages = [pkgs.pyprland];
  home.file = {
    ".config/hypr/pyprland.toml".text = ''
      [pyprland]
      plugins = ["magnify"]

      [pyprland.variables]
      term_classed = "kitty --class"
    '';
  };

  # systemd.user.services = {
  #   pyprland = {
  #     Unit = {
  #       Description = "Pyprland";
  #       After = ["graphical-session.target"];
  #       Requisite = ["graphical-session.target"];
  #       ConditionEnvironment = ["HYPRLAND_INSTANCE_SIGNATURE"];
  #     };
  #     Service = {
  #       Type = "simple";
  #       ExecStart = lib.getExe pkgs.pyprland;
  #       ExecReload = "${lib.getExe pkgs.pyprland} reload";
  #       Restart = "on-failure";
  #       RestartSec = 3;
  #       TimeoutStopSec = 10;
  #     };
  #     Install = {
  #       WantedBy = ["graphical-session.target"];
  #     };
  #   };
  # };

  wayland.windowManager.hyprland.settings.exec-once = [
    "pyprland"
  ];
}
