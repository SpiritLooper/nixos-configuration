{ pkgs, ... }:
{
  imports = [
    ./mute-led
  ];

  boot.kernelPackages = pkgs.linuxPackages_latest;
}
