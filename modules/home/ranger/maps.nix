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
      cw = "console rename%space";
      a = "rename_append";
      pp = "paste";
      po = "paste overwrite=True";
      pP = "paste append=True";
      pO = "paste overwrite=True append=True";
      pl = "paste_symlink relative=False";
      pL = "paste_symlink relative=True";
      phl = "paste_hardlink";
      pht = "paste_hardlinked_subtree";
      pd = "console paste dest=";
      dD = "console delete";
      dT = "console trash";
      dd = "cut";
      ud = "uncut";
      da = "cut mode=add";
      dr = "cut mode=remove";
      dt = "cut mode=toggle";
      yy = "copy";
      uy = "uncut";
      ya = "copy mode=add";
      yr = "copy mode=remove";
      yt = "copy mode=toggle";

      #TemporaryWorkarounds
      dgg = "eval fm.cut(dirarg=dict(to=0), narg=quantifier)";
      dG = "eval fm.cut(dirarg=dict(to=-1), narg=quantifier)";
      dj = "eval fm.cut(dirarg=dict(down=1), narg=quantifier)";
      dk = "eval fm.cut(dirarg=dict(up=1), narg=quantifier)";
      ygg = "eval fm.copy(dirarg=dict(to=0), narg=quantifier)";
      yG = "eval fm.copy(dirarg=dict(to=-1), narg=quantifier)";
      yj = "eval fm.copy(dirarg=dict(down=1), narg=quantifier)";
      yk = "eval fm.copy(dirarg=dict(up=1), narg=quantifier)";

      #searching
      n = "search_next";
      N = "search_next forward=False";
      ct = "search_next order=tag";
      cs = "search_next order=size";
      ci = "search_next order=mimetype";
      cc = "search_next order=ctime";
      cm = "search_next order=mtime";
      ca = "search_next order=atime";

      #tabs
      gt = "tab_move 1";
      gT = "tab_move -1";
      gn = "tab_new";
      gc = "tab_close";
      uq = "tab_restore";

      #sorting
      or = "set sort_reverse!";
      oz = "sort=random";
      dc = "get_cumulative_size";

      #settings
      zc = "set collapse_preview!";
      zd = "set sort_directories_first!";
      zh = "set show_hidden!";
      zI = "set flushinput!";
      zi = "set preview_images!";
      zm = "set mouse_enabled!";
      zp = "set preview_files!";
      zP = "set preview_directories!";
      zs = "set sort_case_insensitive!";
      zu = "set autoupdate_cumulative_size!";
      zv = "set use_preview_script!";
      zf = "console filter%space";

      #filterStack
      ".d" = "filter_stack add type d";
      ".f" = "filter_stack add type f";
      ".l" = "filter_stack add type l";
      ".m" = "console filter_stack add mime%space";
      ".n" = "console filter_stack add name%space";
      ".#" = "console filter_stack add hash%space";
      ".|" = "filter_stack add or";
      ".&" = "filter_stack add and";
      ".!" = "filter_stack add not";
      ".r" = "filter_stack rotate";
      ".c" = "filter_stack clear";
      ".*" = "filter_stack decompose";
      ".p" = "filter_stack pop";
      ".." = "filter_stack show";
    };
  };
}
