{
  pkgs,
  ...
}:{
  home.packages = [pkgs.swaynotificationcenter pkgs.libnotify];
  home.file = {
    ".config/swaync/config.json".source = ./dot/config.json;
    ".config/swaync/style.css".source = ./dot/style.css;
  };
  wayland.windowManager.hyprland.settings.exec-once = [
    "swaync"
  ];
}
