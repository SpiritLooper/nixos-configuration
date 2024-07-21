# Bootloader configuration
# Here we setup systemd-boot as bootloader
{ config, pkgs, lib, ... }:
{
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
}
