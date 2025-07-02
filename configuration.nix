# Edit this configuration file to define what should be installed on
{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./modules/config/boot.nix
      ./modules/config/locale.nix
      ./modules/config/display.nix
      ./modules/config/hyprland.nix
      ./modules/config/nvidia.nix
      ./modules/config/users.nix
      ./modules/config/packages.nix
      ./modules/config/sound.nix
      ./modules/config/session-variables.nix
      ./modules/config/steam.nix
    ];
  
  #Experimental
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.hostName = "KiwiOs"; # Define your hostname.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable CUPS to print documents.
  services.printing.enable = false;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  #PAM
  security.pam.services.hyprlock = {};

  #Version
  system.stateVersion = "25.05"; # Did you read the comment? Nop

  #Sql
  services.mysql = {
    enable = true;
    package = pkgs.mysql80;
    initialDatabases = [
      {
        name = "inventario";
      }
    ];
    
  };

}
