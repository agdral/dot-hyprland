{pkgs, ...}: {
  home.packages = [pkgs.waybar];
  home.file = {
    ".config/waybar/config.jsonc".source = ./dot/config.jsonc;
    ".config/waybar/style.css".source = ./dot/style.css;
  };
  wayland.windowManager.hyprland.settings.exec-once = [
    "waybar"
  ];
}
