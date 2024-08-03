{ lib, pkgs, config, ... }:
{
  config = lib.mkIf config.music.spotify.enable {
    users.users."${config.machine.username}" = {
      packages = with pkgs; [
        spotify
      ];
    };
  };
}