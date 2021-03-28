{ pkgs }:
let
  src =
    ./.;

  cmd =
    ''
    mkdir -p $out
    cp ${src}/bootstrap.tar.gz $out/
    '';
in
pkgs.runCommand "glot-elm-bootstrap" {} cmd
