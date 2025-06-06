{ config, lib, ... }:
{
  config.game = {
    lutris = false;
    steam = false;
    emulator = {
      nds = false;
      ps3 = true;
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