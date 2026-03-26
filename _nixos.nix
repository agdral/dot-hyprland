{pkgs, ...}: {
  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };

  services = {
    displayManager = {
      defaultSession = "hyprland-uwsm";
      sddm = {
        enable = true;
        wayland.enable = true;
        theme = "sddm-astronaut-theme";
      };
    };
  };

  environment.systemPackages = [
    (pkgs.sddm-astronaut.override {
      embeddedTheme = "pixel_sakura";
    })
    pkgs.kdePackages.qtmultimedia
  ];
}
