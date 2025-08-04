{ config, pkgs, ... }:

{
  programs.waybar = {
    style = ''
      * {
        border: none;
        font-family: "Fira Code Nerd Font";
        font-size: 13px;
        min-height: 8px;
      }
      window#waybar {
	      background: transparent;
        margin: 0px;
        padding: 0px;
      }
      #network,
      #cava,
      #keyboard-state,
      #custom-wallpaper,
      #battery,
      #backlight,
      #language,
      #pulseaudio,
      #clock,
      #disk,
      #privacy,
      #idle_inhibitor,
      #memory,
      #cpu,
      #idle_inhibitor,
      #window,
      #workspaces,
      #tray{
        margin: 0px;
        padding-top: 2px;
        padding-bottom: 2px;
        padding-left: 4px;
        padding-right: 6px;
        background: #1d1a2f;
        color: #8bd450;
        border-bottom: 3px solid #965fd4;
        transition: background 0.3s, color 0.3s;
      }
      #custom-launcher,
      #custom-power{
        font-size: 16px;
        margin: 0px;
        padding-left: 10px;
        padding-right: 5px;
        background: #1d1a2f;
        color: #8bd450;
        transition: 0.3s;
        border-bottom: 3px solid #965fd4;
        transition: background 0.3s, color 0.3s;
      }
      #network:hover,
      #cava:hover,
      #keyboard-state:hover,
      #custom-wallpaper:hover,
      #battery:hover,
      #backlight:hover,
      #language:hover,
      #pulseaudio:hover,
      #clock:hover,
      #disk:hover,
      #privacy:hover,
      #idle_inhibitor:hover,
      #memory:hover,
      #cpu:hover,
      #tray:hover,
      #custom-launcher:hover,
      #custom-power:hover {
        background: #8bd450;
        color: #1d1a2f; 
      }
      #pulseaudio.muted {
        color: #FEE5E4;
        background: #32111C; 
        border-bottom: 3px;
        border-style: solid;
        border-color: #EF3946;
        transition: 0.3s;
      }
      #pulseaudio.muted:hover {
        background: #EF3946;
        color: #32111C; 
      }
      #idle_inhibitor.activated{
        border-color: #EF3946;
      }
      #network.disconnected {
        color: #FEE5E4;
        background: #32111C; 
        border-bottom: 3px;
        border-style: solid;
        border-color: #EF3946;
      }
      #network.disconnected:hover {
        background: #EF3946;
        color: #32111C; 
      }
      #workspaces button {
        background: transparent;
        color: #8bd450;                   
        border: none;
        transition: background 0.3s, color 0.3s;
        padding-left: 4px;
        padding-right: 6px;
      }
      #workspaces button:hover {
        background: #8bd450;  
        color: #1d1a2f;                  
      }
      #tray menu{
        margin-top: 10px;
        margin-left: 3px;
        padding-left: 10px;
        padding-right: 10px;
        margin-bottom: 0px;
        border-radius: 10px;
        transition: none;
        background: #32111C; 
        color: #FEE5E4;
        border-bottom: 3px;
        border-style: solid;
        border-color: #EF3946;
        transition: 0.3s;
      }
    '';
  };
}
