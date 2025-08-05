{
    pkgs ? import <nixpkgs> {},
    diskbuilder ? import ./default.nix { pkgs=pkgs; },
}
:
pkgs.mkShell {
    packages = [
        diskbuilder
    ];
}
