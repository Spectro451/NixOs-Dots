{ config, pkgs, ... }:

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
      
      #Tag/Mark
      t = "tag_toggle";
      ut = "tag_remove";
      v = "mark_files all=True toggle=True";
      uv = "mark_files all=True val=False";
      V = "toggle_visual_mode";
      uV = "toggle_visual_mode reverse=True";

    };
  };
}
