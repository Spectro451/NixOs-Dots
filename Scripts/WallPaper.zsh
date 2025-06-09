#!/usr/bin/env bash
#
# Elige un wallpaper aleatorio
wall=$(find ../WallPaper/ -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.gif" \) | shuf -n 1)

# Inicia swww-daemon si no está corriendo
pgrep -x swww-daemon > /dev/null || swww-daemon &

# Espera un poco para que swww-daemon esté listo (evita errores de socket)
sleep 1

# Cambia el fondo
swww img "$wall"

# Copia el wallpaper actual a la ruta que usa Hyprlock
cp "$wall" ~/.config/hypr/wallpaper.jpg
