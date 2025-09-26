{pkgs, ...}: {
  home.packages = with pkgs; [
    swww
    (writeShellScriptBin "imageShuffle" (builtins.readFile ./dot/imageShuffle.sh))
  ];

  services.swww.enable = true;

  wayland.windowManager.hyprland.settings.exec-once = [
    "imageShuffle $XDG_PICTURES_DIR/Wallpaper"
  ];
}
