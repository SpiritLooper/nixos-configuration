{ config, lib, options, pkgs, ... }:
{
  imports = [
    ./games
    ./kernel.nix
    ./network
    ./locales.nix
    ./nixos.nix
    ./printer.nix
    ./shell.nix
    ./users.nix
  ];
}
