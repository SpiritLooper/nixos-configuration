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
        nds = lib.mkEnableOption "Install and configure Nintendo DS Emulator";
        ps3 = lib.mkEnableOption "Install PS3 Emulator";
        switch = lib.mkEnableOption "Install and configure Nintendo Switch Emulator";
        wii-gamecube = lib.mkEnableOption "Install and configure Wii/Gamecube Emulator";
        wii-u = lib.mkEnableOption "Install and configure Wii U Emulator";
      };
    };
  };
}