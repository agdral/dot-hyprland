{
  description = "Home Default";

  outputs = {...}: {
    homeModules.hyprland = {
      imports = [
        ./_settings.nix
        ./_decoration.nix
        ./_packages.nix
        ./services
        ./simples
      ];
    };
  };
}
