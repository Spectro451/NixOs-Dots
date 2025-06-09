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
    kdepackages.sddm
    kitty
  ];
  
  #Fuentes del sistema
  fonts.packages = with pkgs; [
    nerd-fonts.fira-code
  ];
  
  #Habilita firefox
  programs.firefox.enable = true;
}
