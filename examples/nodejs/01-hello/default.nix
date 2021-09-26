{ pkgs, stdenv, ... }:

stdenv.mkDerivation {
  pname = "01-hello";
  version = "0.1.0";
  src = ./.;

  dontPatch = true;
  dontInstall = true;

  buildInputs = with pkgs; [ nodejs git nodePackages.node2nix ];

  buildPhase = ''
    export HOME=$PWD/npm

    node2nix -l package-lock.json

    ls
        
    # mkdir $out
        
    # npm install

    # npm run build
  '';
}
