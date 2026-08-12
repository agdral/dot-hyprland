{
  description = "Hyprland Dotfile";

  inputs = {
    import-tree.url = "github:vic/import-tree";
    joinix.url = "github:agdral/joinix";

    # Tester Modules
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    import-tree,
    joinix,
    ...
  }: let
    lib = nixpkgs.lib;
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
    homeModules.hyprFunc = import ./functions;

    nixosConfigurations = import _tester/config.nix {
      inherit self inputs lib joinix;
    };
  };
}
