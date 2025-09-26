{
  description = "Home Default";

  outputs = {...}: {
    nixosModules.hyprland = ./nixos;
    homeModules.hyprland = ./home;
  };
}
