{...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;
    systemd.enable = false;
  };
  imports = [
    ./settings
    ./services
    ./packages
    ./simples
  ];
}
