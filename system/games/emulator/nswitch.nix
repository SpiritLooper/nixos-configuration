{ pkgs, config, lib, ... }:
{
  config = lib.mkIf config.game.emulator.switch {
    users.users."${config.machine.username}" = {
      packages = with pkgs; [
        ryujinx
      ];
    };
  };
}