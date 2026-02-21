{
  description = "Hyprland Dotfile";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    import-tree.url = "github:vic/import-tree";
  };

  outputs = {
    nixpkgs,
    import-tree,
    ...
  }: let
    lib = nixpkgs.lib;
  in {
    homeModules.hyprland = {
      imports = [
        ./_settings.nix
        ./_decoration.nix
        ./_packages.nix
        ./simples
        (import-tree.filter (lib.hasSuffix "/default.nix") ./services)
      ];
    };
  };
}
