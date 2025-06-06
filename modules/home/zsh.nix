{ config, pkgs, ... }:

{
  programs.zsh = {
   enable = true;
   enableCompletion = true;
   autosuggestions.enable = true;
   syntaxHighlighting.enable = true;
   initExtra = ''
    fastfetch
   '';
   shellAliases = {
    ll = "ls -l";
    edit = "sudo -E ranger --cmd='set preview_files true' --cmd='set use_preview_script true' --cm            d='set preview_directories true' --cmd='set preview_images true'";
    update = "sudo nixos-rebuild switch";
   };
   histSize = 1000;
   histFile = "$HOME/.zsh_history";
   setOptions = [
    "HIST_IGNORE_ALL_DUPS"
    "HIST_SAVE_NO_DUPS"
    "INC_APPEND_HISTORY"
   ];
   ohMyZsh = {
    enable = true;
    plugins = [ "git" "z"];
    theme = "agnoster";
   }; 
  };
}
