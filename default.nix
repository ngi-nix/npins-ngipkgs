let
  sources = import ./npins;
  system = builtins.currentSystem;
  pkgs = import sources.nixpkgs { inherit system; config = { }; overlays = [ ]; };
  ngipkgs = pkgs.callPackage sources.ngipkgs { };
  #ngipkgs = import sources.ngipkgs { };
in
{
  inherit ngipkgs;
  myMachine = pkgs.nixos [
    ./configuration.nix
    #ngipkgs
  ];
}
