{ config, lib, options, pkgs, ... }:
let
  led-monitor-script = pkgs.writeShellScript "mute-led-monitor.sh" (builtins.readFile ./mute-monitor-led.sh);
in
{
  security.sudo.extraRules= [
    {  
      users = [ "spiritlooper" ];
      commands = [
        { 
          command = "${pkgs.alsa-tools}/bin/hda-verb";
          options= [ "NOPASSWD" "SETENV" ]; 
        }
      ];
    }
  ];

  # Add Mute LED monitoring
  systemd.user.services.mute-led = {
    description = "Monitor mute state of volume and update LED state";
    wantedBy = [ "default.target" ];
    path = with pkgs; [ jq alsa-tools bash pipewire ];
    serviceConfig = {
      Type="simple";
      ExecStart = "${led-monitor-script}";
      Restart = "always";
    };
  }; 
}
