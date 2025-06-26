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
      
      #CopyMaps
      copymap q ZZ ZQ
      copymap J <C-D>
      copymap K <C-U>
    '';
  };
}
