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
        theme = "pixel_sakura";
      };
    };
  };

  environment.systemPackages = [
    pkgs.sddm-astronaut
  ];
}
