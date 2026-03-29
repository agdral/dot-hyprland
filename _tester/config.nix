{
  self,
  inputs,
  lib,
  joinix,
  ...
}: let
  system = "x86_64-linux";
  hyprFunc = self.homeModules.hyprFunc { inherit lib; };
  workSpacesF = hyprFunc.workSpaces (joinix.importNixList ./works);
  workSpecialsF = hyprFunc.workSpecials (joinix.importNixList ./workers);
in {
  tester = lib.nixosSystem {
    inherit system;
    modules = [
      inputs.home-manager.nixosModules.home-manager

      {
        nixpkgs.config.allowUnfree = true;
        boot.loader.grub.enable = false;
        fileSystems."/" = {device = "/dev/null";};
        system.stateVersion = "26.05";

        users.users.tester = {
          isNormalUser = true;
        };

        imports = [self.nixosModules.default];
        home-manager = {
          useGlobalPkgs = true;
          useUserPackages = true;
          extraSpecialArgs =
            inputs
            // {
              inherit
                joinix
                ;
            };
        };

        home-manager.users.tester = {
          imports = [
            self.homeModules.default
            ./settings.nix
          ];

          wayland.windowManager.hyprland.settings = {
            monitor = [
              "HDMI-A-1,1920x1080@60,0x0,1"
            ];

            workspace = workSpacesF.workspace;
            bind = workSpacesF.bind ++ workSpecialsF.bind;
            exec-once = workSpecialsF.exec-once;
            windowrule = workSpecialsF.windowrule;
          };

          home = {
            stateVersion = "26.05";
          };
        };
      }
    ];
  };
}
