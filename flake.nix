{
  description = "Hyprland Dotfile";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    import-tree.url = "github:vic/import-tree";
    joinix-nix.url = "github:agdral/joinix";

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
    ...
  }: let
    lib = nixpkgs.lib;
    joinix = inputs.joinix-nix.homeModules.default;
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
