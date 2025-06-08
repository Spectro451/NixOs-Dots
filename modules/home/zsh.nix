{ config, pkgs, ... }:

{
  programs.zsh = {
   enable = true;
  
   enableCompletion = true;
   autosuggestion.enable = true;
   syntaxHighlighting.enable = true;
   initContent = ''
    clear
    sleep 0.1
    fastfetch
   '';
   shellAliases = {
    ll = "ls -l";
edit = "sudo -E ranger --cmd='set preview_files true' --cmd='set use_preview_script true' --cmd='set preview_directories true' --cmd='set preview_images true'";
   };
   history.size = 1500;
   history.path = "$HOME/.zsh_history";
   oh-my-zsh = {
    enable = true;
    plugins = [ "git" "z"];
    theme = "agnoster";
   }; 
  };
}
