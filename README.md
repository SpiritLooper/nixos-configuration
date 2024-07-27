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

1. Clone this repository in `/etc/nixos`
```sh
git clone git@github.com:SpiritLooper/nixos-configuration.git /etc/nixos
```

2. Put hostname configuration
```sh
echo "hostname" > /etc/nixos/static/hostname.txt
```

If this is a new machine, define a fix directory with hostname name
```sh
mkdir /etc/nixos/fixes/hostname
echo "{ ... }: {}" > /etc/nixos/fixes/hostname/default.nix
```

3. Create configuration and configure your machine
```sh
cp /etc/nixos/machine-config-template.nix /etc/nixos/machine-config.nix
vim /etc/nixos/machine-config.nix
```
