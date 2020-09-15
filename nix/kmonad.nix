let
  config = import ./config.nix;
  pkgs   = import (import ./pinned-nixpkgs.nix) { inherit config; };
in pkgs.haskellPackages.callCabal2nix "kmonad" ../. {}
