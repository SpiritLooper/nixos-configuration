{ config, lib, options, pkgs, ... }:
{
  imports = [
    ./gnome.nix
    ./sound.nix
  ];
}
