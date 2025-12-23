{ lib, config, pkgs, options, ... }:
let 
  netbird-latest = pkgs.netbird.overrideAttrs (oldAttrs: rec {
    version = "0.60.9";
    src = pkgs.fetchFromGitHub {
      owner = "netbirdio";
      repo = "netbird";
      rev = "v${version}";
      # hash = lib.fakeHash; 
      hash = "sha256-XM4pUYimxbO3ZCmTPbg7dwDB3x2TnL9PUgbMfjHjxmo="; 
    };
    # vendorHash = lib.fakeHash;
    vendorHash = "sha256-b3Wl9jsAdYC91JM/kDo4yIF05hqbivtrcn1aRuZzP3s=";
  }); 
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
