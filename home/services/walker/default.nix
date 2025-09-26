{pkgs, ...}: {
  home.packages = [pkgs.walker];
  home.file = {
    ".config/walker/config.toml".source = ./dot/config.toml;
    ".config/walker/themes/vault.css".source = ./dot/themes/vault.css;
    ".config/walker/themes/vault.toml".source = ./dot/themes/vault.toml;
  };
  systemd.user.services = {
    walker = {
      Unit = {
        Description = "Walker";
        After = ["graphical-session.target"];
        Requisite = ["graphical-session.target"];
        ConditionEnvironment = ["HYPRLAND_INSTANCE_SIGNATURE"];
      };
      Service = {
        Type = "simple";
        ExecStart = "${pkgs.walker}/bin/walker --gapplication-service";
        ExecReload = "kill -SIGUSR2 $MAINPID";
        Restart = "on-failure";
        RestartSec = 3;
        TimeoutStopSec = 10;
      };
      Install = {
        WantedBy = ["graphical-session.target"];
      };
    };
  };
}
