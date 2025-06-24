{ config, pkgs, ... }

{
  #imports = [
  #  ./style.nix
  #];

  programs.waybar = {
    enable = true;

    settings = {
      #Bar
      layer = "top";
      modules-left = ["custom/launcher" "hyprland/workspaces"];
      modules-center = ["hyprland/window"];
      modules-right = ["cpu" "memory" "disk" "keyboard-state" "custom/wallpaper" "custom/automatico" "tray" "cava" "backlight" "pulseaudio" "battery" "clock" "custom/power"];

      #Modules
      pulseaudio = {
        tooltip = false;
        scroll-step = 5;
        format = "{icon}  {volume}%";
        format-muted = "muted";
        on-click = "pactl set-sink-mute @DEFAULT_SINK@ toggle";
        format-icons = {
          default = ["" "" ""];
        };
      };
      "hyprland/window" = {
        max-length = 100;
        separate-outputs = true;
        format = "{}";
        rewrite = {
          "(.*) — Mozilla Firefox" = "$1";
        };
      };
    };
  };
}
