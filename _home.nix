{...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;
    systemd.enable = false;
    configType = "lua";

    extraLuaFiles = {
      "config" = {
        content = ./simples/config.lua;
        autoLoad = true;
      };
      "monitor" = {
        content = ./simples/monitor.lua;
        autoLoad = true;
      };
      "rule" = {
        content = ./simples/rule.lua;
        autoLoad = true;
      };
      "binds" = {
        content = ./simples/binds.lua;
        autoLoad = true;
      };
      "start" = {
        content = ./simples/start.lua;
        autoLoad = true;
      };
    };
  };
}
