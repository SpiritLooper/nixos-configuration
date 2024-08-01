{ config, lib, ... }:
{
  config.game = {
    steam = false;
    emulator.switch = false;
  };
  config.machine.username = "username";
  config.system.stateVersion = "24.05"; # Put your nixos version installed 
}