# Shell configurations
# Add packages and some vars 
{ config, lib, options, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    wget
    curl
    htop
    lsof
    bash-completion
  ];

  # environment.variables.SSL_CERT_FILE="/etc/ssl/certs/ca-bundle.crt";
  
  # Shell app
  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;
  environment.shellAliases = lib.mkForce {};
  
  # Add gnupg
  programs.gnupg.agent.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "fr";
    variant = "azerty";
  };

  # Configure console keymap
  console.keyMap = "fr";
}
