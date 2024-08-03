{ lib, pkgs, config, ... }:
{
  config = lib.mkIf config.music.dj.enable {
    users.users."${config.machine.username}" = {
      packages = with pkgs; [
        mixxx
        spotdl
      ];
    };
  };
}