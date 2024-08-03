{ config, lib, options, pkgs, ... }:
{
  imports = [
    ./games
    ./music
    ./kernel.nix
    ./network
    ./locales.nix
    ./nixos.nix
    ./printer.nix
    ./shell.nix
    ./users.nix
  ];
}
