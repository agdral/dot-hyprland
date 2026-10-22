hl.config({
  -- settings.general
  general = {
    border_size = 2,
    col = {
      active_border = "rgba(33ccffee)",
      inactive_border = "rgba(595959aa)",
    },
    gaps_in = 6,
    gaps_out = 12,
    layout = "dwindle",
  },

  -- settings.animations
  animations = {
    animation = {
      "windows,1,8,default,slide",
      "workspaces,1,8,default,slidefade 20%",
    },
    enabled = true,
  },

  -- settings.decoration
  decoration = {
    blur = {
      enabled = false
    },
    dim_inactive = false,
    dim_special = 0,
    dim_strength = 0.1,
    rounding = 10,
    shadow = {
      enabled = false
    }
  },

  -- settings.dwindle
  dwindle = {
    special_scale_factor = 0.93
  },


  -- settings.group
  group = {
    auto_group = true,
    col = {
      border_active = "rgba(33ccffee)",
      border_inactive = "rgba(595959aa)",
    },
    group_on_movetoworkspace = true,
    groupbar = {
      col = {
        active = "rgba(33ccffee)",
        inactive = "rgba(595959aa)",
      },
      gaps_in = 5,
      gaps_out = 4,
      gradient_rounding = 4,
      height = 4,
      render_titles = false,
      round_only_edges = false,
      rounding = 4
    }
  },

  -- settings.input
  input = {
    follow_mouse = 1,
    kb_layout = "us",
    kb_variant = "altgr-intl",
    numlock_by_default = true,
    scroll_factor = 2.0,
    sensitivity = 0.3,
    tablet = {
      absolute_region_position = true
    }
  },

  -- settings.misc
  misc = {
    disable_hyprland_logo = true,
    disable_splash_rendering = true
  }
})
