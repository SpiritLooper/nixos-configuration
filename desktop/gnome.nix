# All Gnome stuff configuration

{ config, lib, options, pkgs, ... }:
{
  # Enable the GNOME Desktop Environment.
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome = { 
      enable = true;
      extraGSettingsOverridePackages = with pkgs.gnome; [ mutter ];
      extraGSettingsOverrides = ''
        [org.gnome.mutter]
        experimental-features=['variable-refresh-rate', 'scale-monitor-framebuffer']
      '';
    };
  };

  environment.gnome.excludePackages = ( with pkgs.gnome; [
    gnome-music
    gnome-terminal
    epiphany
    geary
    totem
    tali
    iagno
    hitori
    atomix
  ]);

  # Disable avahi
  services.avahi.enable = false;

  # Disable trackers and gnome default stuff
  services.gnome.tracker-miners.enable = false;
  services.gnome.tracker.enable = false;

  services.gnome.gnome-browser-connector.enable = false;
  services.gnome.gnome-initial-setup.enable = false;
  services.gnome.gnome-remote-desktop.enable = false;
  services.gnome.gnome-user-share.enable = false;
  services.gnome.rygel.enable = false;
}
