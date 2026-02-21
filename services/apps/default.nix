{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.dotHypr;
in {
  options.dotHypr.hypridle = mkOption {
    type = types.bool;
    default = false;
  };
  config = mkIf cfg.hypridle {
    services.hypridle = {
      enable = true;
      settings = {
        general = {
          ignore_dbus_inhibit = true;
          ignore_systemd_inhibit = true;
        };

        listener = [
          {
            timeout = 3600;
            on-timeout = "poweroff";
          }
        ];
      };
    };
  };
}

