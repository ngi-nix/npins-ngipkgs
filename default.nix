let
  sources = import ./npins;
  system = builtins.currentSystem;
  pkgs = import sources.nixpkgs { inherit system; config = {}; overlays = []; };
  ngipkgs = pkgs.callPackage sources.ngipkgs {  };
in
{
  myMachine = pkgs.nixos {
    modules = [
      ./configuration.nix
      ngipkgs.nixosModules.default
      ngipkgs.nixosModules."services.vula"
    ];
  };
}
