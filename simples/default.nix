{joinix, ...}: {
  wayland.windowManager.hyprland.settings = {
    "$Modm" = "SUPER";
    "$ModS" = "SUPER SHIFT";
    "$HyprLm" = "SUPER CONTROL";
    "$HyprRm" = "SUPER ALT";
    "$HyprOm" = "SUPER ALT CONTROL";

    "$F23" = "F23";
    "$F22" = "XF86TouchpadOn";
    "$F21" = "XF86TouchpadToggle";
    "$F20" = "XF86AudioMicMute";

    bind = joinix.importNixList ./binds;
    bindm = joinix.importNixList ./binds/mouse;
    # bindr = joinix.importNixList ./binds/release;
    binde = joinix.importNixList ./binds/repeat;

    windowrule = joinix.importNixList ./rules;
  };
}
