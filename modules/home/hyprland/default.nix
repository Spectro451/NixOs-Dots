{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      
      #Monitor
      monitor = [ "DP-2,1920x1080@164.83,0x0,1" ];

      #Start
      exec-once = [
        "${config.home.homeDirectory}/.config/hypr/Scripts/Wallpaper.zsh"
        "${config.home.homeDirectory}/.config/hypr/Scripts/Inicio.zsh"
        "waybar"
      ];

      #Env
      env = [
        "XCURSOR_SIZE,15"
        "HYPRCURSOR_SIZE,15"
      ];

      #Look and Feel
      general = {
        gaps_in = 4;
        gaps_out = 6;
        border_size = 2;

        #Bordes Eva-01 style
        "col.active_border" = "rgba(965fd4ff) rgba(8bd450ff) 45deg";
        "col.inactive_border" = "rgba(3f6d4eee)";

        # Set to true enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = true;

        # Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
        allow_tearing = true;
        layout = "dwindle";
      };
      decoration = {
        rounding = 7;
        rounding_power = 2;
        
        windowrule = [
          "opacity 1.0 override 0.85 override 1 override, title:.*youtube.*"
          "opacity 1.0 override 0.85 override 1 override, title:.*Crunchyroll.*"
          "opacity 1.0 override 0.85 override 1 override, title:.*Netflix.*"
          "opacity 1.0 override 0.85 override 1 override, title:.*Max.*"
        ];
      };
    };
  };
}
