{
  pkgs ? import <nixpkgs> {},
}
:
pkgs.stdenv.mkDerivation {
  name = "IncludeOS diskbuilder";
  src = ./.;
  
  buildInputs = with pkgs; [ 
    gcc
    gnumake
    cmake
  ];
  
  buildPhase = ''
    mkdir build
    cmake ..
    make
  '';
  
  installPhase = ''
    mkdir -p $out/bin
    cp diskbuilder $out/bin/
  '';
}
