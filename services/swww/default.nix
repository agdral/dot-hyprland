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
  options.dotHypr.swww = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.swww {
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

          ExecStart = "${pkgs.swww}/bin/swww-daemon";

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
          After = ["graphical-session.target" "swww.service"];
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
