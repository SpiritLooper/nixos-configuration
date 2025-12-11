{ config, pkgs, lib, ... }:
{
    systemd.services.beszel-agent = {
      description = "Beszel Monitoring Agent";
      path = [ pkgs.linuxKernel.packages.linux_zen.nvidia_x11 ];
      after = [ "network.target" ];
      wantedBy = [ "multi-user.target" ];
      environment = {
        HUB_URL = "https://beszel.egghead.infrao.top";
	      LISTEN = "45876";
        KEY = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKZiSbJeqNnu7hG0ZBB7T/V1vTMVgRKJ2u2JMpggNYXE";
        TOKEN = "4fc7f3fe-f185-4e13-986b-86d7aa237b5e";
        EXTRA_FILESYSTEMS="/dev/sda,/dev/sdb,/dev/sdc,/dev/sdd,/dev/nvme0n1";
      };
      serviceConfig = {
        ExecStart = "${pkgs.beszel}/bin/beszel-agent";
        Restart = "on-failure";
        RestartSec = 10;
        DynamicUser = true;
        ProtectSystem = "strict";
        ProtectHome = true;
        PrivateTmp = true;
      };
    };
}