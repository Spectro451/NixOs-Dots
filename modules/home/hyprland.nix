{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      monitor = [ "DP-2,1920x1080@164.83,0x0,1" ];  


    };
    extraConfig = builtins.readFile ../../Dots/hypr/hyprland.conf; 
  };
}
