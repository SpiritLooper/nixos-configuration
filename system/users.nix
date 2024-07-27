# All users configuration
{ config, pkgs, lib, ... }:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."${config.machine.username}" = {
    isNormalUser = true;
    description = "Julien";
    extraGroups = [ "networkmanager" "wheel" "audio" ];
    packages = with pkgs; [
      spotify
      discord
      alsa-tools
    ];
  };
}
