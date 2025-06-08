{ config, pkgs, ... }: 

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.timeout = 15;
  boot.loader.systemd-boot.consoleMode = "max";
}
