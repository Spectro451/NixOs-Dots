{ config, pkgs, ... }:

let
  ranger = pkgs.ranger;
in
{
  imports = [
    ./alias.nix
    ./maps.nix
  ];
  programs.ranger = {
    enable =true;

    settings = {
      viewmode = "miller";
      column_ratios = "1,3,4";
      hidden_filter = ''
        ^\.|\.(?:pyc|pyo|bak|swp)$|^lost\+found$|^__(py)?cache__$
      '';
      show_hidden = true;
      confirm_on_delete = "multiple";
      preview_script = "${ranger}/share/doc/ranger/config/scope.sh";
      use_preview_script = true;
      automatically_count_files = true;
      open_all_images = true;
      vcs_aware = false;
      vcs_backend_git = "enabled";
      vcs_backend_hg = "disabled";
      vcs_backend_bzr = "disabled";
      vcs_backend_svn = "disabled";
      vcs_msg_length = 50;
      preview_images = true;
      preview_images_method = "kitty";
      w3m_delay = 0.02;
      w3m_offset = 0;
      iterm2_font_width = 8;
      iterm2_font_height = 11;
      unicode_elipsis = false;
      bidi_support = false;
      show_hidden_bookmarks = true;
      colorscheme = "jungle";
      preview_files = true;
      preview_directories = true;
      collapse_preview = true;
      wrap_plaintext_previews = false;
      save_console_history = true;
      status_bar_on_top = false;
      draw_progress_bar_in_status_bar = true;
      draw_borders = "both";
      dirname_in_tabs = false;
      mouse_enabled = true;
      display_size_in_main_column = true;
      display_size_in_status_bar = true;
      display_free_space_in_status_bar = true;
      display_tags_in_all_columns = true;
      update_title = false;
      update_tmux_title = true;
      shorten_title = 3;
      hostname_in_titlebar = true;
      tilde_in_titlebar = false;
      max_history_size = 20;
      max_console_history_size = 50;
      scroll_offset = 8;
      flushinput = true;
      padding_right = true;
      autosave_bookmarks = true;
      save_backtick_bookmark = true;
      autoupdate_cumulative_size = false;
      show_cursor = false;
      sort = "natural";
      sort_reverse = false;
      sort_case_insensitive = true;
      sort_directories_first = true;
      sort_unicode = false;
      xterm_alt_key = false;
      cd_bookmarks = true;
      cd_tab_case = "sensitive";
      cd_tab_fuzzy = false;
      preview_max_size = 0;
      hint_collapse_threshold = 10;
      show_selection_in_titlebar = true;
      idle_delay = 2000;
      metadata_deep_search = false;
      clear_filters_on_dir_change = false;
      line_numbers = false;
      relative_current_zero = false;
      one_indexed = false;
      save_tabs_on_exit = false;
      wrap_scroll = false;
      global_inode_type_filter = "";
      freeze_files = false;
      size_in_bytes = false;
      nested_ranger_warning = true;
    };
    
    extraConfig = ''
      #EspecialKey
      map <C-r> reset
      map <C-l> redraw_window
      map <C-c> abort
      map <esc> change_mode normal
      map <A-j> scroll_preview 1
      map <A-k> scroll_preview -1
      map <C-p> chain console; eval fm.ui.console.history_move(-1)
      map "<any> tag_toggle tag=%any
      map <Space> mark_files toggle=True
      map <F1> help
      map <F2> rename_append
      map <F3> display_file
      map <F4> edit
      map <F5> copy
      map <F6> cut
      map <F7> console mkdir%space
      map <F8> console delete
      #map <F8> console trash
      map <F10> exit

      # In case you work on a keyboard with dvorak layout
      map <UP>       move up=1
      map <DOWN>     move down=1
      map <LEFT>     move left=1
      map <RIGHT>    move right=1
      map <HOME>     move to=0
      map <END>      move to=-1
      map <PAGEDOWN> move down=1   pages=True
      map <PAGEUP>   move up=1     pages=True
      map <CR>       move right=1
      #map <DELETE>   console delete
      map <INSERT>   console touch%space

      # VIM-like
      copymap <UP>       k
      copymap <DOWN>     j
      copymap <LEFT>     h
      copymap <RIGHT>    l
      copymap <HOME>     gg
      copymap <END>      G
      copymap <PAGEDOWN> <C-F>
      copymap <PAGEUP>   <C-B>
      map J  move down=0.5  pages=True
      map K  move up=0.5    pages=True

      #External
      map du shell -p du --max-depth=1 -h --apparent-size
      map dU shell -p du --max-depth=1 -h --apparent-size | sort -rh

      #fileSystem
      map p`<any> paste dest=%any_path
      map p'<any> paste dest=%any_path
      map A  eval fm.open_console('rename ' + fm.thisfile.relative_path.replace("%", "%%"))
      map I  eval fm.open_console('rename ' + fm.thisfile.relative_path.replace("%", "%%"), position=7)

      #tabs
      map <C-n>     tab_new
      map <C-w>     tab_close
      map <TAB>     tab_move 1
      map <S-TAB>   tab_move -1
      map <A-Right> tab_move 1
      map <A-Left>  tab_move -1
      map <a-1>     tab_open 1
      map <a-2>     tab_open 2
      map <a-3>     tab_open 3
      map <a-4>     tab_open 4
      map <a-5>     tab_open 5
      map <a-6>     tab_open 6
      map <a-7>     tab_open 7
      map <a-8>     tab_open 8
      map <a-9>     tab_open 9
      map <a-r>     tab_shift 1
      map <a-l>     tab_shift -1

      #sorting
      map os chain set sort=size;      set sort_reverse=False
      map ob chain set sort=basename;  set sort_reverse=False
      map on chain set sort=natural;   set sort_reverse=False
      map om chain set sort=mtime;     set sort_reverse=False
      map oc chain set sort=ctime;     set sort_reverse=False
      map oa chain set sort=atime;     set sort_reverse=False
      map ot chain set sort=type;      set sort_reverse=False
      map oe chain set sort=extension; set sort_reverse=False
      map oS chain set sort=size;      set sort_reverse=True
      map oB chain set sort=basename;  set sort_reverse=True
      map oN chain set sort=natural;   set sort_reverse=True
      map oM chain set sort=mtime;     set sort_reverse=True
      map oC chain set sort=ctime;     set sort_reverse=True
      map oA chain set sort=atime;     set sort_reverse=True
      map oT chain set sort=type;      set sort_reverse=True
      map oE chain set sort=extension; set sort_reverse=True

      #filterStack
      map ." filter_stack add duplicate
      map .' filter_stack add unique
      map /  console search%space

      # Bookmarks
      map `<any>  enter_bookmark %any
      map '<any>  enter_bookmark %any
      map m<any>  set_bookmark %any
      map um<any> unset_bookmark %any
      map m<bg>   draw_bookmarks

      # Generate all the chmod bindings with some python help:
      eval for arg in "rwxXst": cmd("map +u{0} shell -f chmod u+{0} %s".format(arg))
      eval for arg in "rwxXst": cmd("map +g{0} shell -f chmod g+{0} %s".format(arg))
      eval for arg in "rwxXst": cmd("map +o{0} shell -f chmod o+{0} %s".format(arg))
      eval for arg in "rwxXst": cmd("map +a{0} shell -f chmod a+{0} %s".format(arg))
      eval for arg in "rwxXst": cmd("map +{0}  shell -f chmod u+{0} %s".format(arg))
      eval for arg in "rwxXst": cmd("map -u{0} shell -f chmod u-{0} %s".format(arg))
      eval for arg in "rwxXst": cmd("map -g{0} shell -f chmod g-{0} %s".format(arg))
      eval for arg in "rwxXst": cmd("map -o{0} shell -f chmod o-{0} %s".format(arg))
      eval for arg in "rwxXst": cmd("map -a{0} shell -f chmod a-{0} %s".format(arg))
      eval for arg in "rwxXst": cmd("map -{0}  shell -f chmod u-{0} %s".format(arg))

      # Move around
      cmap <up>    eval fm.ui.console.history_move(-1)
      cmap <down>  eval fm.ui.console.history_move(1)
      cmap <left>  eval fm.ui.console.move(left=1)
      cmap <right> eval fm.ui.console.move(right=1)
      cmap <home>  eval fm.ui.console.move(right=0, absolute=True)
      cmap <end>   eval fm.ui.console.move(right=-1, absolute=True)
      cmap <a-b> eval fm.ui.console.move_word(left=1)
      cmap <a-f> eval fm.ui.console.move_word(right=1)

      # Basic
      cmap <tab>   eval fm.ui.console.tab()
      cmap <s-tab> eval fm.ui.console.tab(-1)
      cmap <ESC>   eval fm.ui.console.close()
      cmap <CR>    eval fm.ui.console.execute()
      cmap <C-l>   redraw_window

      # Line Editing
      cmap <backspace>  eval fm.ui.console.delete(-1)
      cmap <delete>     eval fm.ui.console.delete(0)
      cmap <C-w>        eval fm.ui.console.delete_word()
      cmap <A-d>        eval fm.ui.console.delete_word(backward=False)
      cmap <C-k>        eval fm.ui.console.delete_rest(1)
      cmap <C-u>        eval fm.ui.console.delete_rest(-1)
      cmap <C-y>        eval fm.ui.console.paste()

      # And of course the emacs way
      copycmap <ESC>       <C-g>
      copycmap <up>        <C-p>
      copycmap <down>      <C-n>
      copycmap <left>      <C-b>
      copycmap <right>     <C-f>
      copycmap <home>      <C-a>
      copycmap <end>       <C-e>
      copycmap <delete>    <C-d>
      copycmap <backspace> <C-h>
      cmap <allow_quantifiers> false

      #pagerKeyBindings
      # Movement
      pmap  <down>      pager_move  down=1
      pmap  <up>        pager_move  up=1
      pmap  <left>      pager_move  left=4
      pmap  <right>     pager_move  right=4
      pmap  <home>      pager_move  to=0
      pmap  <end>       pager_move  to=-1
      pmap  <pagedown>  pager_move  down=1.0  pages=True
      pmap  <pageup>    pager_move  up=1.0    pages=True
      pmap  <C-d>       pager_move  down=0.5  pages=True
      pmap  <C-u>       pager_move  up=0.5    pages=True

      # Basic
      pmap     <C-l> redraw_window
      pmap     <ESC> pager_close
      pmap E      edit_file

      #Taskview
      # Movement
      tmap <up>        taskview_move up=1
      tmap <down>      taskview_move down=1
      tmap <home>      taskview_move to=0
      tmap <end>       taskview_move to=-1
      tmap <pagedown>  taskview_move down=1.0  pages=True
      tmap <pageup>    taskview_move up=1.0    pages=True
      tmap <C-d>       taskview_move down=0.5  pages=True
      tmap <C-u>       taskview_move up=0.5    pages=True

      # Changing priority and deleting tasks
      tmap J          eval -q fm.ui.taskview.task_move(-1)
      tmap K          eval -q fm.ui.taskview.task_move(0)
      tmap dd         eval -q fm.ui.taskview.task_remove()
      tmap <pagedown> eval -q fm.ui.taskview.task_move(-1)
      tmap <pageup>   eval -q fm.ui.taskview.task_move(0)
      tmap <delete>   eval -q fm.ui.taskview.task_remove()

      # Basic
      tmap <C-l> redraw_window
      tmap <ESC> taskview_close

      #CopyMaps
      copymap q ZZ ZQ
      copymap J <C-D>
      copymap K <C-U>
      copymap zf zz
      copymap m<bg>  um<bg> `<bg> '<bg>
      copycmap <ESC> <C-c>
      copycmap <CR>  <C-j>
      copycmap <a-b> <a-left>
      copycmap <a-f> <a-right>
      copycmap <backspace> <backspace2>
      copypmap <ESC> q Q i <F3>
      copypmap <UP>       k  <C-p>
      copypmap <DOWN>     j  <C-n> <CR>
      copypmap <LEFT>     h
      copypmap <RIGHT>    l
      copypmap <HOME>     g
      copypmap <END>      G
      copypmap <C-d>      d
      copypmap <C-u>      u
      copypmap <PAGEDOWN> n  f  <C-F>  <Space>
      copypmap <PAGEUP>   p  b  <C-B>
      copytmap <UP>       k  <C-p>
      copytmap <DOWN>     j  <C-n> <CR>
      copytmap <HOME>     g
      copytmap <END>      G
      copytmap <C-u>      u
      copytmap <PAGEDOWN> n  f  <C-F>  <Space>
      copytmap <PAGEUP>   p  b  <C-B>
      copytmap <ESC> q Q w <C-c>
    '';
  };
}
