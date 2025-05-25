# steam configuration
{ config, pkgs, lib, ... }:
{
  config = lib.mkIf config.game.lutris {
    users.users."${config.machine.username}" = {
      packages = with pkgs; [
        lutris
      ];
    };
  };
}
