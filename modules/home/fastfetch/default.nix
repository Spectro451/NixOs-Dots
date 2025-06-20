{ config, pkgs, ...}:

let
  #colores bonitos
  greenDark = "3f6d4e";
  greenBright = "8bd450";
  purpleDark = "734f9a";
  purpleLight = "965fd4";
  darkBg = "4b4a52";
  
  #inicio seccion
  header = {
  type = "custom";
  format = "┌{\$1}{\$1}┐";
  outputColor = "90";
  };
  #fin seccion
  footer = {
    type = "custom";
    format = "└┘";
    outputColor = 90;
  };

  #ColorBar
  ColorBar = {
    type = "custom";
    format = 
      "{##${greenDark}}  {##${greenBright}}  {##${purpleDark}}  {##${purpleLight}}  {##${darkBg}}  "+
      "{##${purpleLight}}  {##${purpleDark}}  {##${greenBright}}  {##${greenDark}}  {##${darkBg}}  "+
      "{##${greenDark}}  {##${greenBright}}  {##${purpleDark}}  {##${purpleLight}}  {##${darkBg}}  "+
      "{##${purpleLight}}  {##${purpleDark}}  {##${greenBright}}  {##${greenDark}}  {##${darkBg}}  "+
      "{##${purpleDark}} "
    ;
  };
in 
{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "./.config/fastfetch/logo/punpun.png";
        type = "kitty";
        padding = { top = 2; left = 5;};
        width = 50;
      };
      ascii = {
        fallback = false;
      };
      display = {
        separator = " -> ";
        constants = [ "──────────────────────────────" ];
      };
      modules = [
        header
        {
          type = "title";
          keyWidth = 10;
        }
        #footer
        ColorBar
        #header
        {
          type = "os";
          key = "{icon} OS";
          keyColor = "yellow";
          format = "{pretty-name} ({arch})";
        }
      ];
    };
  };
}

