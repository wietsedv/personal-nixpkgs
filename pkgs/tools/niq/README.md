# Personal Nix Packages

This repository contains Nix derivations for custom utility packages, obscure software or specific versions of software that I need.

I intend to keep this repository clean, simple and suitable as an example for people other than myself. If you spot a bad practice, please create an issue.

## Usage

### Channel

~~~shell
$ nix-channel --add https://github.com/wietsedv/personal-nixpkgs/archive/master.tar.gz wietsedv
$ nix-channel --update
$ nix-env -iA wietsedv.niq
~~~


### Single package

~~~shell
$ nix-env -f https://github.com/wietsedv/personal-nixpkgs/archive/master.tar.gz -iA niq
~~~
