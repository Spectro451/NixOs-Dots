{ config, pkgs, ... }: 

{
  #Activa x11
  services.xserver.enable = true;
  
  #Activa sddm y wayland
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.package = pkgs.kdePackages.sddm;
  services.displayManager.sddm.wayland.enable = true;
  services.displayManager.sddm.autoNumlock = true;
}
