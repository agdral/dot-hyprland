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
    nixosModules.default = {
      imports = [./_nixos.nix];
    };
    homeModules.default = {
      imports = [
        ./_home.nix
        ./packages
        ./simples
        (import-tree.filter (lib.hasSuffix "/default.nix") ./services)
      ];
    };
  };
}
