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
  config.machine.username = "username";
  config.system.stateVersion = "24.05"; # Put your nixos version installed 
}