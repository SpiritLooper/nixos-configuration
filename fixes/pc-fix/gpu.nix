{ config, lib, options, pkgs, ... }:
{
  # Enable OpenGL
  hardware.opengl = {
    enable = true;
  };

  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    # Modesetting is required.
    modesetting.enable = true;
    forceFullCompositionPipeline = true;
  };
}
