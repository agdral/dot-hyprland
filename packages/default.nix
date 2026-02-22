{pkgs, ...}: {
  home.packages = with pkgs; [
    hyprshot
    hyprpicker
    hyprland-qtutils
    grimblast
  ];
}
