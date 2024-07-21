{ lib, config, options, ... }:
{
  imports = [
    ./certificates.nix
    ./firewall.nix
  ];

  config = {
    networking.hostName = "hp-13x-spectre";
    networking.enableIPv6 = false;
    
    # Add networkManager for Gnome integration
    networking.networkmanager.enable = true;

    # Install Tailscale
    services.tailscale.enable = true;
  };
}
