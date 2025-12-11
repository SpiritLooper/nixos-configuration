# All users configuration
{ config, pkgs, lib, ... }:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."${config.machine.username}" = {
    isNormalUser = true;
    description = "Julien";
    extraGroups = [ "networkmanager" "wheel" "audio" "docker" ];
    packages = with pkgs; [
      discord
      alsa-tools
      dig
      chromium
    ];
  };
}
