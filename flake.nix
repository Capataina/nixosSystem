{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs: 
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      
      nixosConfigurations = {
      
        bspwm = nixpkgs.lib.nixosSystem {
          specialArgs = {inherit inputs;};
          modules = [
            ./environments/bspwm/configuration.nix
            inputs.home-manager.nixosModules.default
          ];
        };
        
    };  
  };
}
