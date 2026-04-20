{ lib }: {
  workSpaces = import ./workSpace.nix;
  workSpecials = import ./workSpecials.nix { inherit lib; };
}
