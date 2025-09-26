{
  description = "Home Default";

  outputs = {...}: {
    nixosModules.hyprland = ./hyprland/nixos.nix;
    homeModules.hyprland = ./hyprland/home.nix;

    nixosModules.tools = ./nixosModules/tools.nix;
    nixosModules.packages = ./nixosModules/packages;
    nixosModules.services = ./nixosModules/services;

    homeModules.packages = ./homeModules/packages;
    homeModules.shell = ./homeModules/shell;
    homeModules.services = ./homeModules/services;
  };
}
