{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.dotHypr;
  imageShuffle = pkgs.writeShellScriptBin "imageShuffle" (builtins.readFile ./dot/imageShuffle.sh);
in {
  options.dotHypr.awww = mkEnableOption "awww";
  config = mkIf cfg.awww {
    home.packages = with pkgs; [
      awww
      imageShuffle
    ];

    systemd.user.services = {
      awww = {
        Unit = {
          Description = "Walker";
          After = ["graphical-session.target"];
          Requisite = ["graphical-session.target"];
          ConditionEnvironment = ["HYPRLAND_INSTANCE_SIGNATURE"];
        };
        Service = {
          Type = "simple";

          ExecStart = "${pkgs.awww}/bin/awww-daemon";

          Restart = "on-failure";
          RestartSec = 3;
          TimeoutStopSec = 10;
        };
        Install = {
          WantedBy = ["graphical-session.target"];
        };
      };

      imageShuffle = {
        Unit = {
          Description = "Image Shuffle Wallpaper Service";
          After = ["graphical-session.target" "awww.service"];
          Requisite = ["graphical-session.target"];
          ConditionEnvironment = ["HYPRLAND_INSTANCE_SIGNATURE"];
        };
        Service = {
          Type = "simple";
          ExecStart = "${imageShuffle}/bin/imageShuffle /data/kael/Pictures/Wallpapers";
          Restart = "on-failure";
          RestartSec = 3;
        };
        Install = {
          WantedBy = ["graphical-session.target"];
        };
      };
    };
  };
}
