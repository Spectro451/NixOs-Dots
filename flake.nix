{
  description = "Mi primer flake UwU";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-25.05";
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {self, nixpkgs, home-manager, ... }: 
  let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      KiwiOs = lib.nixosSystem {
        inherit system;
        modules = [ 
        ./configuration.nix
        ./hardware-configuration.nix
        ];
      };
    };
    homeConfigurations = {
      kiwi = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ 
          ./home.nix 
        ];
      };
    };
  };

}
