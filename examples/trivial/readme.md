# Trivial builder

These functions are built on top of `mkDerivation`, and they don't have any specified dependency

## `pkgs.writeTextFile`

Create a file under `/nix/store`. It is the function used to create the following functions.

## `pkgs.writeText`

Create a file under `/nix/store`.

## `pkgs.writeTextDir`

Create a file under `/nix/store/<drvDir>`.

## `pkgs.writeScriptBin`

Create an executable shell script under `/nix/store/<drvDir>/bin/`.

## `pkgs.writeScript`

Create an executable shell script under `/nix/store`.

## `pkgs.writeReferenceToFile`

Create a file with direct and indirect dependency of the supplied derivation in `/nix/store`

## `pkgs.writeDirectReferencesToFile`

Create a file with direct dependency of the supplied derivation in `/nix/store`


