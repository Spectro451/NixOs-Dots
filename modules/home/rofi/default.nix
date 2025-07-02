{ config, pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    font = "FiraCode Nerd Font 18";
    modes = [
      "drun";
    ];
    terminal = "\${pkgs.kitty}/bin/kitty";
    location = "center";
  };
}
