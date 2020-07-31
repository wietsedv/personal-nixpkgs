
{ pkgs ? import <nixpkgs> { } }:

rec {
  niq = pkgs.callPackage ./pkgs/tools/niq { pkgs = pkgs; };
}
