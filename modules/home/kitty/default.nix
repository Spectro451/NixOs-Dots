{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;

    #Font
    font = {
      name = "FiraCode Nerd Font";
      size = 10.0;
    };

    #Settings generales
    settings = {
      window_padding_width = 1;
      hide_window_decorations = true;
      confirm_os_window_close = 0;
      close_on_child_death = true;
    };
  };
}
