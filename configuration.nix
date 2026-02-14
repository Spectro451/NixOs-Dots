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
      #./modules/config/nvidia.nix
      ./modules/config/amd.nix
      ./modules/config/users.nix
      ./modules/config/packages.nix
      ./modules/config/sound.nix
      ./modules/config/session-variables.nix
      ./modules/config/steam.nix
    ];
  
  #Experimental
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  networking.hostName = "KiwiOs"; # Define your hostname.
  
  # Enable CUPS to print documents.
  services.printing.enable = false;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  #Huellas
  services.fprintd.enable = true;

  #PAM
  security.pam.services.hyprlock.fprintAuth = true;

  #Android
  programs.adb.enable = true;
  users.users.kiwi.extraGroups = [ "adbusers" "kvm" ];
  virtualisation.libvirtd.enable = true;

  #Version
  system.stateVersion = "25.05"; # Did you read the comment? Nop

  #Postgress
  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_16;
    ensureDatabases = [
      "kiwiPets"
    ];
  };
}
