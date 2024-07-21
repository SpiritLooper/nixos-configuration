# NixOS Configuration

This repository contains my NixOS configuration in pure nix (without flakes or other experimental stuffs)

## How its organized ? 

`configuration.nix` import modules from differents directories :
- `boot` : boot configuration (systemd-boot)
- `desktop` : Gnome configuration + misc config (sound)
- `fixes` : Fixes brought for each machines only
- `system` : Linux system configuration stuff

## Machines handled

### HP Spectre 13x

Model 13-ap0xxx

Fixes : 
- Mute LED not blinking when the sound is mute 

## Default programs

> TODO: Write section

## Installation

> TODO: Write section

