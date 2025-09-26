{...}: {
  wayland.windowManager.hyprland.settings = {
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

    general = {
      gaps_in = 6;
      gaps_out = 12;
      border_size = 2;
      "col.active_border" = "rgba(33ccffee)";
      "col.inactive_border" = "rgba(595959aa)";
      layout = "dwindle";
    };

    decoration = {
      rounding = 10;
      blur = {
        enabled = false;
      };
      shadow = {
        enabled = false;
      };
      dim_inactive = false;
      dim_strength = 0.1;
      dim_special = 0;
    };

    animations = {
      enabled = true;
      animation = "windows,1,8,default,slide";
    };

    group = {
      "col.border_active" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
      "col.border_inactive" = "rgba(595959aa)";
      groupbar = {
        render_titles = false;
        rounding = 4;
        gradient_rounding = 4;
        round_only_edges = false;
        gaps_out = 4;
        gaps_in = 5;
        height = 4;
        "col.active" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
        "col.inactive" = "rgba(595959aa)";
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
}
