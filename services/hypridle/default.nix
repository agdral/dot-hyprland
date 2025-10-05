{...}: {
  services.hypridle = {
    enable = true;
    settings = {
      general = {
        ignore_dbus_inhibit = false;
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
}
