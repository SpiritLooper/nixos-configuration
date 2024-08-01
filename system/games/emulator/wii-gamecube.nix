{ pkgs, config, lib, ... }:
{
  config = lib.mkIf config.game.emulator.wii-gamecube {
    users.users."${config.machine.username}" = {
      packages = with pkgs; [
        dolphin-emu
      ];
    };
  };
}