# Kernel configuration
{ config, lib, ... }:
{
  boot.kernelParams = if !config.networking.enableIPv6 then [ "ipv6.disable=1" ] else []; 
}
