{ config, lib, options, pkgs, ... }:
{
  imports = [
    ./beszel-agent.nix
    ./keyboard.nix
    ./gpu.nix
  ];
}
