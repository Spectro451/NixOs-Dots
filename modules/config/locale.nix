{ config, pkgs, ... }: 

{
  time.timeZone = "America/Santiago";
  i18n.defaultLocale = "es_CL.UTF-8";
  console.keyMap = "es";
}
