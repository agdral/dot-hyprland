{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.dotHypr;
in {
  options.dotHypr.vicinae = mkEnableOption "vicinae";
  config = mkIf cfg.vicinae {
    home.packages = [pkgs.vicinae];

    programs.vicinae = {
      enable = true; 
      systemd = {
        enable = true;
        autoStart = true;
        environment = {
          USE_LAYER_SHELL = 1;
        };
      };
    };
  };
}
