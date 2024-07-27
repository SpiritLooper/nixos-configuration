{ lib, ... }:
let
  fixes-path = ./. + "/${(lib.fileContents ../static/hostname.txt)}";
in
{
  imports = [
    fixes-path
  ];
}
