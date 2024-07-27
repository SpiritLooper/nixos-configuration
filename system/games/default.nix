{ lib, ... }: 
{
  imports = [
    ./steam.nix
  ];
  
  options = {
    game = {
      steam = lib.mkEnableOption "Install and configure Steam Launcher";
    };
  };
}