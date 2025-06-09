#!/usr/bin/env bash
wallpapers=(~/.config/hypr/WallPaper/*.{jpg,jpeg,png,gif})
wall="${wallpapers[RANDOM % ${#wallpapers[@]}]}"
pgrep -x swww-daemon >/dev/null || swww-daemon &
sleep 1
swww img "$wall"
cp "$wall" ~/.config/hypr/wallpaper.jpg
