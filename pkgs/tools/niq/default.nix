{ pkgs, lib, fetchFromGitHub, python38Packages }:

with python38Packages;

buildPythonApplication rec {
  name = "niq";
  version = "2020-07-31";

  src = fetchFromGitHub {
      owner = "wietsedv";
      repo = "nix-niq";
      rev = "525a86c9b0032d5733e7c232006150ea51ee1378";
      sha256 = "1ixnkq4jpw859x3kkphwh53kc89dnhvcqjdh5sp6nv4dj4217m6j";
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
