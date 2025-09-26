{...}: {
  services.hypridle = {
    enable = true;
    settings = {
      general = {
        ignore_dbus_inhibit = false;
        ignore_systemd_inhibit = false;
      };

      listener = [
        {
          timeout = 300;
          on-timeout = "safeeyes -d";
          on-resume =  "safeeyes -e";
        }
        {
          timeout = 3600;
          on-timeout = "poweroff";
        }
      ];
    };
  };
}
