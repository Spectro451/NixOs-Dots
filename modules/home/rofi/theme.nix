{ config, pkgs, ... }:

let
    background = "#1d1a2f";
    backgroundAlt = "#734f9a";
    foreground = "#8bd450";
    selected = "#965fd4";
    active = "#8bd450";
    urgent = "#3f6d4e";
in 
{
  programs.rofi = {
    theme = {
      "*" = {
        width = 600;
      };
      "#element-text",
      "#element-icon",
      "#mode-switcher" ={
        background-color = background;
        text-color = foreground;
        border-radius = 20px;
        highlight = selected;
      };
    };
  };
}

