# Printer configuration

{ config, lib, options, pkgs, ... }:
{
  # Enable CUPS to print documents.
  services.printing.enable = true;
}
