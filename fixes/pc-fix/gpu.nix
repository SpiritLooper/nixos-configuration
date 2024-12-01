{ config, lib, options, pkgs, ... }:
{
  # Enable OpenGL
  hardware.graphics.enable = true;

  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    open = false;
    # Modesetting is required.
    modesetting.enable = true;
    forceFullCompositionPipeline = true;
  };
}
