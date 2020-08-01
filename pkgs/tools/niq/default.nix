{ pkgs, lib, fetchFromGitHub, python38Packages }:

python38Packages.buildPythonApplication rec {
  pname = "niq";
  version = "0.0.1";

  src = fetchFromGitHub {
      owner = "wietsedv";
      repo = "nix-niq";
      rev = "000006e1c1d98c39ab7483dbcf5c94688ef5e49e";
      sha256 = "1f5m8bl03gn8y1ibzpyksdn8wn9fhnqqavd5pf4xgp2a9j2xbi8p";
  };

  propagatedBuildInputs = with python38Packages; [
    requests
    brotli
  ];

  meta = {
    description = "Fast Nixpkgs Quering";
    license = with lib.licenses; [ mit ];
  };
}
