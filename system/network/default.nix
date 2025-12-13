{ lib, config, options, ... }:
let 
  netbird-latest = ( import <nixpkgs-unstable> {} ).netbird;
in
{
  imports = [
    ./certificates.nix
    ./firewall.nix
  ];

  config = {
    networking.hostName = config.machine.name;
    networking.enableIPv6 = false;
    
    # Add networkManager for Gnome integration
    networking.networkmanager.enable = true;

    # Install Netbird
    services.netbird = {
      enable = true;
      package = netbird-latest;
    };
  };
}
