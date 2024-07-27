{ lib, config, options, ... }:
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

    # Install Tailscale
    services.tailscale.enable = true;
  };
}
