{ config, pkgs, ... }: 

{
  users.users.kiwi = {
    isNormalUser = true;
    shell = pkgs.zsh;
    description = "Kiwi";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [ ];
  };

  #Habilita zsh
  programs.zsh.enable = true;

  #habilita networkmanager
  networking.networkmanager.enable = true;

  #Permite wireless
  networking.wireless.enable = true;

}
