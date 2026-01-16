# Nix Home Manager Configurations

The structure in this repository is inspired by [ssouthcity's `nix`-repository](https://github.com/ssouthcity/nix/tree/main).

## Prerequisites

Create a new file at `~/.config/nix/nix.conf` with the following:

```conf
experimental-features = nix-command flakes
```

## Usage

First time the `home-manager` is initialized, used:

```shell
home-manager switch --flake ~/.config/home-manager#fredrikbakken@<device> --show-trace
```

At any later stage, the alias can be used:

```shell
hm-mac
```

or

```shell
hm-wsl
```

### Update `flake.lock`

Update the `flake.lock` with the commands:

```shell
nix flake update
```
