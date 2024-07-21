{ config, lib, options, pkgs, ... }:
{
  imports = [
    ./kernel.nix
    ./network
    ./locales.nix
    ./nixos.nix
    ./printer.nix
    ./shell.nix
    ./users.nix
  ];
}
