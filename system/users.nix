# All users configuration
{ pkgs, lib, ... }:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.spiritlooper = {
    isNormalUser = true;
    description = "Julien";
    extraGroups = [ "networkmanager" "wheel" "audio" ];
    packages = with pkgs; [
      spotify
      discord
      alsa-tools
    ];
  };

  # Add steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };
  
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "steam"
    "steam-original"
    "steam-run"
  ];
}
