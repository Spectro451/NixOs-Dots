{ config, pkgs, ... }:

{
  home.username = "kiwi";
  home.homeDirectory = "/home/kiwi";
  #Version compatible del home
  home.stateVersion = "25.05"; # Please read the comment before changing.
 
  imports = [
    ./modules/home/zsh.nix
    ./modules/home/hyprland
    ./modules/home/fastfetch
    ./modules/home/hyprland/hyprlock
    ./modules/home/hyprland/hypridle
    ./modules/home/waybar
    ./modules/home/kitty
    ./modules/home/ranger
    ./modules/home/dev.nix
    ./modules/home/rofi
  ];
  home.packages = with pkgs; [
    ranger
    neovim
    btop
    swww
    waybar
    rofi-wayland
    protonup
    discord
    fastfetch
    cava
    hyprshot
    brightnessctl
    hyprlock
    wl-clipboard
    pulseaudio
    feh
    spotify
    libreoffice-qt6-fresh
    imagemagick
    hypridle
    
  ];

  home.file = {
    ".config/hypr/Scripts/Inicio.zsh".source = ./Scripts/Inicio.zsh;
    ".config/hypr/Scripts/WallPaper.zsh".source = ./Scripts/WallPaper.zsh;
    #".config/rofi/colors.rasi".source = ./Dots/rofi/colors.rasi;
    #".config/rofi/config.rasi".source = ./Dots/rofi/config.rasi;
    #".config/rofi/fonts.rasi".source = ./Dots/rofi/fonts.rasi;
    #".config/rofi/menu.rasi".source = ./Dots/rofi/menu.rasi;
    ".config/rofi/powermenu.sh".source = ./Dots/rofi/powermenu.sh;
    #".config/rofi/powermenu.rasi".source = ./Dots/rofi/powermenu.rasi;
    ".config/ranger/rifle.conf".source = ./modules/home/ranger/rifle.conf;
    ".config/htop/htoprc".source = ./Dots/htop/htoprc;
    ".config/cava/config".source = ./Dots/cava/config;
    ".config/cava/shaders/spectrogram.frag".source = ./Dots/cava/shaders/spectrogram.frag;
    ".config/cava/shaders/bar_spectrum.frag".source = ./Dots/cava/shaders/bar_spectrum.frag;
    ".config/cava/shaders/pass_through.vert".source = ./Dots/cava/shaders/pass_through.vert;
    ".config/cava/shaders/northern_lights.frag".source = ./Dots/cava/shaders/northern_lights.frag;
    ".config/cava/shaders/winamp_line_style_spectrum.frag".source = ./Dots/cava/shaders/winamp_line_style_spectrum.frag;
    ".config/hypr/Scripts/Inicio.zsh".executable = true;
    ".config/hypr/Scripts/WallPaper.zsh".executable = true;
    ".config/fastfetch/logo/punpun.png".source = ./modules/home/fastfetch/logo/punpun.png;
    ".config/hypr/WallPaper" = {
      source = ./Wallpaper;
      recursive = true;
    };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  nixpkgs.config.allowUnfree = true;
}
