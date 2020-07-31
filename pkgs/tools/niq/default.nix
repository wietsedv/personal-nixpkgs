{ pkgs ? import <nixpkgs> {} }:
with pkgs.python38Packages;

buildPythonPackage rec {
  pname = "niq";
  version = "2020-07-31";

  src = fetchFromGitHub {
      owner = "wietsedv";
      repo = "nix-niq";
      rev = "";
      sha256 = "";
  };

  buildInputs = [
    requests
    brotli
  ];

  meta = {
    description = "Fast Nixpkgs Quering";
    license = with lib.licenses; [ mit ];
  };
}
