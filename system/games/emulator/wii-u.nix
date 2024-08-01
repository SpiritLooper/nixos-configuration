{ pkgs, config, lib, ... }:
{
  config = lib.mkIf config.game.emulator.wii-u {
    users.users."${config.machine.username}" = {
      packages = with pkgs; [
        cemu
      ];
    };
  };
}