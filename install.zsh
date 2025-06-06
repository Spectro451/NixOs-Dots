#!/usr/bin/env bash
set -e

DOTFILES_DIR="$HOME/.NixOs-Dots"

echo "Instalando dotfiles desde $DOTFILES_DIR..."

sudo cp -f "$DOTFILES_DIR/configuration.nix" /etc/nixos/configuration.nix

# Si decides copiar hardware config, usa -f también
# sudo cp -f "$DOTFILES_DIR/hardware-configuration.nix" /etc/nixos/hardware-configuration.nix

mkdir -p "$HOME/Scripts"
cp -f "$DOTFILES_DIR/Scripts/"*.zsh "$HOME/Scripts/"
chmod +x "$HOME/Scripts/"*.zsh

mkdir -p "$HOME/Wallpaper"
cp -rf "$DOTFILES_DIR/Wallpaper/"* "$HOME/Wallpaper/"

echo "¡Dotfiles instalados!"

echo "Ejecutando: sudo nixos-rebuild switch"
sudo nixos-rebuild switch
