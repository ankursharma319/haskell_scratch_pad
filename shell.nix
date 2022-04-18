{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/30d3d79b7d3607d56546dd2a6b49e156ba0ec634.tar.gz") {}}:

pkgs.mkShell {
  buildInputs = [
    pkgs.cabal-install
    pkgs.ghc
  ];

  shellHook = ''
    echo "setup localized and isolated cabal environment"
    export CABAL_DIR="$PWD/.cabal_work"
    export CABAL_CONFIG="$CABAL_DIR/config"
  '';
}
