{
  inputs = {
    nixpkgs = { url = "github:nixos/nixpkgs/nixos-unstable"; };
  };

  outputs = { nixpkgs, ... }: let 
    system = "x86_64-linux";
  in {
    packages.${system} = let 
      pkgs = nixpkgs.legacyPackages.${system};
    in{
      writeScriptBin = (pkgs.callPackage ./writeScriptBin.nix {});
    };
  };
}

