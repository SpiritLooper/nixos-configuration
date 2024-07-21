{ config, lib, options, pkgs, ... }:
{
  imports = [
    ./keyboard.nix
    ./gpu.nix
  ];
}
