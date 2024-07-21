# Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ ... }:
{
  imports =
    [ 
      ./hardware-configuration.nix    # Include the results of the hardware scan.
      ./boot
      ./fixes
      ./system
      ./desktop
    ];
}

