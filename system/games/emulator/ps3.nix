{ pkgs, config, lib, ... }:
{
  config = lib.mkIf config.game.emulator.ps3 {
    users.users."${config.machine.username}" = {
      packages = with pkgs; [
        rpcs3
      ];
    };
    security.pam.loginLimits = [
      { domain = "${config.machine.username}"; type = "soft"; item = "memlock"; value = 524288; }
      { domain = "${config.machine.username}"; type = "hard"; item = "memlock"; value = 524288; }
    ];
  };
}