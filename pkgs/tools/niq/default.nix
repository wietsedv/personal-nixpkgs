{ pkgs, lib, fetchFromGitHub, python38Packages }:

with python38Packages;

buildPythonApplication rec {
  name = "niq";
  version = "2020-08-01";

  src = fetchFromGitHub {
      owner = "wietsedv";
      repo = "nix-niq";
      rev = "0c22d76d469630cf7aa7e027b1c56ddd9ed683ad";
      sha256 = "0rw9xzvdmxfmvnsw12hmx3gs3znra2ds61bkf420d3i7dpl6412h";
  };

  propagatedBuildInputs = [
    requests
    brotli
  ];

  meta = {
    description = "Fast Nixpkgs Quering";
    license = with lib.licenses; [ mit ];
  };
}
