{
  inputs = {
    nixpkgs = { url = "github:nixos/nixpkgs/nixos-unstable"; };
    flake-utils = {
      url = "github:numtide/flake-utils";
      inputs = { nixpkgs.follows = "nixpkgs"; };
    };
  };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      (let pkgs = nixpkgs.legacyPackages.${system};
      in {
        packages.${system} = {
          "01-hello" = (pkgs.callPackage ./01-hello/default.nix { });
        };

        devShell = (({ pkgs, ... }:
          pkgs.mkShell {
            buildInputs = with pkgs; [ nodejs ];

            shellHook = "";
          }) { inherit pkgs; });
      }));
}

