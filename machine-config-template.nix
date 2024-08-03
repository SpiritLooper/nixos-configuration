{ config, lib, ... }:
{
  config.game = {
    steam = false;
    emulator = {
      nds = false;
      switch = false;
      wii-gamecube = false;
      wii-u = false;
    };
  };
  config.music = {
    dj.enable = true;
    spotify.enable = true;
  };
  config.machine.username = "username";
  config.system.stateVersion = "24.05"; # Put your nixos version installed 
}