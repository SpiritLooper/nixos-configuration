{ pkgs, config, lib, ... }:
{
  config = lib.mkIf config.game.emulator.ps3 {
    users.users."${config.machine.username}" = {
      packages = with pkgs; [
        rpcs3
      ];
    };
  };
}