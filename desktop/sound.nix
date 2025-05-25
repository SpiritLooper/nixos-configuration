# All Sound configuration

{ config, lib, options, pkgs, ... }:
{
  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  environment.systemPackages = with pkgs; [ 
    headsetcontrol 
    easyeffects
    lsp-plugins         # for compression, EQ, etc.
    zam-plugins         # more audio effects
    rnnoise             # for noise reduction
  ];
  
  services.udev.packages = [ pkgs.headsetcontrol ];
}
