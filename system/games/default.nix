{ lib, ... }: 
{
  imports = [
    ./steam.nix
    ./emulator
  ];
  
  options = {
    game = {
      steam = lib.mkEnableOption "Install and configure Steam Launcher";
      emulator = {
        switch = lib.mkEnableOption "Install and configure Nintendo Switch Emulator";
        wii-u = lib.mkEnableOption "Install and configure Wii U Emulator";
      };
    };
  };
}