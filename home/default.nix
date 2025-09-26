{pkgs, ...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;
    systemd.enable = false;
  };

  home.packages = with pkgs; [
    hyprshot
    hyprpicker
    hyprland-qtutils
    grimblast
  ];

  imports = [
    ./settings.nix
    ./services
    ./simples
  ];
}
