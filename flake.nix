{
  description = "Hyprland Dotfile";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    import-tree.url = "github:vic/import-tree";
    joinix.url = "github:agdral/joinix";
  };

  outputs = inputs @ {
    nixpkgs,
    import-tree,
    ...
  }: let
    lib = nixpkgs.lib;
    joinix = inputs.joinix.homeModules.default;
  in {
    nixosModules.default = {
      imports = [./_nixos.nix];
    };
    homeModules.default = {
      _module.args = {inherit joinix;};
      imports = [
        ./_home.nix
        ./packages
        ./simples
        (import-tree.filter (lib.hasSuffix "/default.nix") ./services)
      ];
    };
  };
}
