{pkgs, ...}: let
  imageShuffle = pkgs.writeShellScriptBin "imageShuffle" (builtins.readFile ./dot/imageShuffle.sh);
in {
  home.packages = with pkgs; [
    swww
    imageShuffle
  ];

  systemd.user.services = {
    swww = {
      Unit = {
        Description = "Walker";
        After = ["graphical-session.target"];
        Requisite = ["graphical-session.target"];
        ConditionEnvironment = ["HYPRLAND_INSTANCE_SIGNATURE"];
      };
      Service = {
        Type = "simple";

        ExecStartPre = "${pkgs.swww}/bin/swww-daemon";
        ExecStart = "${imageShuffle}/bin/imageShuffle /data/kael/Pictures/Wallpaper";

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
