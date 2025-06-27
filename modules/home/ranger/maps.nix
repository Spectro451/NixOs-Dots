{ config, pkgs, ... }:

let
  ranger = pkgs.ranger;
in 
{
  programs.ranger = {
    mappings = {
      #Basic
      Q = "quitall";
      q = "quit";
      R = "reload_cwd";
      F = "set freeze_files!";
      "~" = "set viewmode!";
      i = "display_file";
      "?" = "help";
      W = "display_log";
      w = "taskview_open";
      S = "shell $SHELL";
      ":" = "console";
      ";" = "console";
      "!" = "console shell%space";
      "@" = "console -p6 shell %%s";
      "#" = "console shell -p%space";
      s = "console shell%space";
      r = "chain draw_possible_programs; console open_with%space";
      f = "console find%space";
      cd = "console cd%space";

      #Linemone
      Mf = "linemode filename";
      Mi = "linemode fileinfo";
      Mm = "linemode mtime";
      Mh = "linemode humanreadablemtime";
      Mp = "linemode permissions";
      Ms = "linemode sizemtime";
      MH = "linemode sizehumanreadablemtime";
      Mt = "linemode metatitle";
     
      #Jumping vim
      H = "history_go -1";
      L = "history_go 1";
      "]" = "move_parent 1";
      "[" = "move_parent -1";
      "}" = "traverse";
      "{" = "traverse_backwards";
      ")" = "jump_non";

      #Tag/Mark
      t = "tag_toggle";
      ut = "tag_remove";
      v = "mark_files all=True toggle=True";
      uv = "mark_files all=True val=False";
      V = "toggle_visual_mode";
      uV = "toggle_visual_mode reverse=True";

      #Directorys
      gh = "cd ~";
      ge = "cd /etc/";
      gu = "cd /usr/";
      gd = "cd /dev/";
      gl = "cd  -r .";
      gL = "cd -r %f";
      go = "cd /opt/";
      gv = "cd /var/";
      gm = "cd /media";
      gi = "eval fm.cd('/run/media/' + os.getenv('USER'))";
      gM = "cd /mnt";
      gs = "cd /srv/";
      gp = "cd /tmp/";
      gr = "cd /";
      gR = "eval fm.cd(ranger.RANGERDIR)";
      "/" = "cd /";
      "g?" = "cd ${ranger}/share/doc/ranger/";

      #External
      E = "edit";
      yp = "yank path";
      yd = "yank dir";
      yn = "yank name";
      "y." = "yank name_without_extension";

      #fileSystem
      "=" = "chmod";


    };
  };
}
