{ pkgs, config, lib, ... }:
{
  config = lib.mkIf config.game.emulator.nds {
    users.users."${config.machine.username}" = {
      packages = with pkgs; [
        melonDS
      ];
    };
  };
}