{ config, pkgs, ... }: 

{
  environment.systemPackages = with pkgs; [
    nano
    curl
    git
    gcc
    gnumake
    unzip
    ripgrep
    kdePackages.sddm
    kitty
    home-manager
  ];
  
  #Fuentes del sistema
  fonts.packages = with pkgs; [
    nerd-fonts.fira-code
  ];
  
  #Habilita firefox
  programs.firefox.enable = true;
}
