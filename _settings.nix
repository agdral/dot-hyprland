{...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;
    systemd.enable = false;

    settings = {
      input = {
        kb_layout = "us";
        kb_variant = "altgr-intl";
        numlock_by_default = true;
        follow_mouse = 1;
        sensitivity = 0.3;
        scroll_factor = 2.0;
        tablet = {
          absolute_region_position = true;
        };
      };

      dwindle = {
        special_scale_factor = 0.93;
      };

      misc = {
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
      };
    };
  };
}
