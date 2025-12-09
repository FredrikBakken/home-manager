# Nix Home Manager Configurations

The structure in this repository is inspired by [ssouthcity's `nix`-repository](https://github.com/ssouthcity/nix/tree/main).

## Usage

First time the `home-manager` is initialized, used:

```shell
home-manager switch --flake ~/.config/home-manager#fredrikbakken@macbook --show-trace
```

At any later stage, the alias can be used:

```shell
hm-update
```
