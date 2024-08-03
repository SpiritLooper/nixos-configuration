{ lib, ... }: 
{
  imports = [
    ./dj.nix
    ./spotify.nix
  ];
  
  options = {
    music = {
      dj.enable = lib.mkEnableOption "Install and configure DJ softwares";
      spotify.enable = lib.mkEnableOption "Install and configure Spotify";
    };
  };
}