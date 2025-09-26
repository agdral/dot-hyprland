{tools, ...}: {
  wayland.windowManager.hyprland.settings = {
    "$Modm" = "SUPER";
    "$ModS" = "SUPER SHIFT";
    "$HyprLm" = "SUPER CONTROL";
    "$HyprRm" = "SUPER ALT";
    "$HyprOm" = "SUPER ALT CONTROL";

    "$F23" = "XF86TouchpadOff";
    "$F22" = "XF86TouchpadOn";
    "$F21" = "XF86TouchpadToggle";
    "$F20" = "XF86AudioMicMute";

    bind = tools.importNixList ./binds;
    windowrulev2 = tools.importNixList ./rules;
  };
}
