{pkgs, ...}: {
  home.packages = with pkgs; [
    swww
    (writeShellScriptBin "imageShuffle" (builtins.readFile ./dot/imageShuffle.sh))
  ];

  # systemd.user.services = {
  #   swww = {
  #     Unit = {
  #       Description = "Walker";
  #       After = ["graphical-session.target"];
  #       Requisite = ["graphical-session.target"];
  #       ConditionEnvironment = ["HYPRLAND_INSTANCE_SIGNATURE"];
  #     };
  #     Service = {
  #       Type = "simple";
  #       ExecStart = "${pkgs.swww}/bin/swww-daemon";
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
    "swww-daemon"
    "imageShuffle $XDG_PICTURES_DIR/Wallpaper"
  ];
}
