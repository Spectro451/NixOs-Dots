{ config, pkgs, ... }:

{
  
  general = {
    disable_loading_bar = true;
    hide_cursor = true;
  };

  #Background
  background = {
    monitor = "";
    path = "${config.home.homeDirectory}/.config/hypr/wallpaper.jpg";
    blur_passes = 2;
    color = $base;
  };
}
