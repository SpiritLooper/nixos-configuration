# Personnal module
# Pick want you want for your system
{ config, lib,... }:
with lib;
{
  options = {
    machine = {
      name = mkOption {
        type = types.str;
        default = null;
        example = "hp-13x-spectre";
        description = "Machine name";
      };

      username = mkOption {
        type = types.str;
        default = "spiritlooper";
        example = "spiritlooper";
        description = "Default username with admin rights";
      };
    };
  };

  config = {
    machine.name = lib.fileContents ../static/hostname.txt;
  };
}
