{ config, pkgs, ... }:

let
  font = "FiraCode Nerd Font";
   base = "rgb(0,0,0)";
in
{
programs.hyprlock = {
  enable = true;
  
  settings = {
    general = {
      disable_loading_bar = true;
      hide_cursor = true;
    };

    #Background
    background = [
      {
        monitor = "";
        path = "${config.home.homeDirectory}/.config/hypr/wallpaper.jpg";
        blur_passes = 2;
        color = base;
      }
    ];

    label = [ 
      #Time
      {
        monitor = "";
        text = "$TIME";
        color = "rgb(FEE5E4)";
        font_size = 90;
        font_family = font;
        position = "0, 150";
        halign = "center";
        valign = "center";
      }

      #Date
      {
        monitor = "";
        text = ''cmd[update:43200000] date +"%A, %d %B %Y"'';
        color = "rgb(FEE5E4)";
        font_size = 25;
        font_family = font;
        position = "0, 50";
        halign = "center";
        valign = "center";
      }
    ];

    #Input
    input-field = [
      {
        monitor = "";
        size = "300, 60";
        outline_thickness = 3;
        dots_size = 0.2;
        dots_spacing = 0.2;
        dots_center = true;
        outer_color = "rgb(EF3946)";
        inner_color = "rgb(32111C)";
        font_color = "rgb(FEE5E4)";
        fade_on_empty = false;
        placeholder_text = "";
        hide_input = false;
        check_color = "";
        fail_color = "";
        fail_text = ''<i>$FAIL <b>($ATTEMPTS)</b></i>'';
        capslock_color = "";
        position = "0, -47";
        halign = "center";
        valign = "center";
      }
    ];
  };
};
}

