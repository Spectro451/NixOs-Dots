{ config, pkgs, ... }:

{
  programs.ranger = {
    aliases = {
      e = "edit";
      q = "quit";
      "q!" = "quit!";
      qa = "quitall";
      "qa!" = "quitall!";
      qall = "quitall";
      "qall!" = "quitall!";
      setl = "setlocal";
      filter = "scout -prts";
      find = "scout -aets";
      mark = "scout -mr";
      unmark = "scout -Mr";
      search = "scout -rs";
      search_inc = "scout -rts";
      travel = "scout -aefklst";
    };
  };
}
