{pkgs, ...}: {
  home.packages = with pkgs; [
    hyprshot
    hyprpicker
    hyprland-guiutils
    grimblast
  ];
}
