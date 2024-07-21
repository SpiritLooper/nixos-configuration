# All NixOS configuration

{ config, lib, options, pkgs, ... }:
{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Fix Blurry Electro Apps
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  system.copySystemConfiguration = false;

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  # 
  # Most users should **never** change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  # 
  # This value does **not** affect the Nixpkgs version your packages and OS are pulled from,
  # so changing it will **not** upgrade your system.
  # 
  # This value being lower than the current NixOS release does **not** mean your system is
  # out of date, out of support, or vulnerable.
  # 
  # Do **not** change this value unless you have manually inspected all the changes it would
  # make to your configuration, and migrated your data accordingly.
  system.stateVersion = "24.05"; # Did you read the comment?
}
