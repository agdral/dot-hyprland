{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.dotHypr;
in {
  options.dotHypr.waybar = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.waybar {
    home.packages = [pkgs.waybar];
    home.file = {
      ".config/waybar/config.jsonc".source = ./dot/config.jsonc;
      ".config/waybar/style.css".source = ./dot/style.css;
    };
    wayland.windowManager.hyprland.settings.exec-once = [
      "waybar"
    ];
  };
}
