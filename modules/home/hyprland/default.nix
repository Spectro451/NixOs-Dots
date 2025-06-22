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
        gaps_in = 2;
        gaps_out = 6;
        border_size = 2;

        #Bordes Eva-01 style
        "col.active_border" = "rgba(965fd4ff) rgba(8bd450ff) 45deg";
        "col.inactive_border" = "rgba(3f6d4eee)";

        resize_on_border = true;

        allow_tearing = true;
        layout = "dwindle";
      };

      #decoration
      decoration = {
        rounding = 7;
        rounding_power = 2;
        
        windowrule = [
          "opacity 1.0 override 0.85 override 1 override, title:.*youtube.*"
          "opacity 1.0 override 0.85 override 1 override, title:.*Crunchyroll.*"
          "opacity 1.0 override 0.85 override 1 override, title:.*Netflix.*"
          "opacity 1.0 override 0.85 override 1 override, title:.*Max.*"
        ];

        active_opacity = 1;
        inactive_opacity = 0.85;
        
        shadow = {
          enabled = true;
          range = 9;
          render_power = 4;
          color = "rgba(734f9aff)";
        };

        blur = {
          enabled = true;
          size = 4;
          passes = 2;
          vibrancy = 0.6
        };
      };

      #animations
      animations = {
        enabled = true;

        bezier = [
          "easeOutQuint,0.23,1,0.32,1";
          "easeinoutcubic,0.65,0.05,0.36,1";
          "linear,0,0,1,1";
          "almostLinear,0.5,0.5,0.75,1.0";
          "quick,0.15,0,0.1,1";
        ];

        animation = [
          "global, 1, 10, default";
          "border, 1, 5.39, easeOutQuint";
          "windows, 1, 4.79, easeOutQuint";
          "windowsIn, 1, 4.1, easeOutQuint, popin 87%";
          "windowsOut, 1, 1.49, linear, popin 87%";
          "fadeIn, 1, 1.73, almostLinear";
          "fadeOut, 1, 1.46, almostLinear";
          "fade, 1, 3.03, quick";
          "layers, 1, 3.81, easeOutQuint";
          "layersIn, 1, 4, easeOutQuint, fade";
          "layersOut, 1, 1.5, linear, fade";
          "fadeLayersIn, 1, 1.79, almostLinear";
          "fadeLayersOut, 1, 1.39, almostLinear";
          "workspaces, 1, 8, easeOutQuint, slide";
          "workspacesIn, 1, 8, easeOutQuint, slide";
          "workspacesOut, 1, 8, easeOutQuint, slide";
        ];
      };

      #Layout
      dwindle = {

        pseudotile = true;
        preserve_split = true;
      };
      master = {

        new_status = "master";
      };
      misc = {
        force_default_wallpaper = -1;
        disable_hyprland_logo = false;
      };

      #Input
      input = {

        #Keyboard
        kb_layout = "latam";
        kb_variant = empty;
        kb_model = empty;
        kb_options = empty;
        kb_rules = empty;
        
        #Numlock
        numlock_by_default = true;  

      };
    };
  };
}
