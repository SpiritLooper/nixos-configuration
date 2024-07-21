# Firewall configuration
{ config, lib, options, pkgs, ... }:

{
  networking.firewall.enable = false;
}
