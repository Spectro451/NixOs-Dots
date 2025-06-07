{ config, pkgs, ... }:

{
  home.username = "kiwi";
  home.homeDirectory = "/home/kiwi";
    #Version compatible del home
  home.stateVersion = "25.05"; # Please read the comment before changing.
 
  imports = [
    ./modules/home/zsh.nix
    ./modules/home/hyprland.nix
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

    (vscode-with-extensions.override {
      vscodeExtensions = with pkgs.vscode-extensions; [
      vscjava.vscode-java-pack
      ms-python.python
      eamodio.gitlens
      ];
    }) 
  ];

  home.file = {

  ".config/hypr/Scripts/Inicio.zsh".source = ./Scripts/Inicio.zsh;
  ".config/hypr/Scripts/WallPaper.zsh".source = ./Scripts/WallPaper.zsh;
  #".config/hypr/hyprland.conf".source = ./Dots/hypr/hyprland.conf;
  ".config/hypr/hyprlock.conf".source = ./Dots/hypr/hyprlock.conf;
  #".config/hypr/wallpaper.jpg".source = ./Dots/hypr/wallpaper.jpg;
  ".config/waybar/config.jsonc".source = ./Dots/waybar/config.jsonc;
  ".config/waybar/style.css".source = ./Dots/waybar/style.css;
  ".config/rofi/colors.rasi".source = ./Dots/rofi/colors.rasi;
  ".config/rofi/config.rasi".source = ./Dots/rofi/config.rasi;
  ".config/rofi/fonts.rasi".source = ./Dots/rofi/fonts.rasi;
  ".config/rofi/menu.rasi".source = ./Dots/rofi/menu.rasi;
  ".config/rofi/powermenu.sh".source = ./Dots/rofi/powermenu.sh;
  ".config/rofi/powermenu.rasi".source = ./Dots/rofi/powermenu.rasi;
  ".config/ranger/rc.conf".source = ./Dots/ranger/rc.conf;
  ".config/ranger/rifle.conf".source = ./Dots/ranger/rifle.conf;
  ".config/kitty/kitty.conf".source = ./Dots/kitty/kitty.conf;
  ".config/kitty/current-theme.conf".source = ./Dots/kitty/current-theme.conf;
  ".config/htop/htoprc".source = ./Dots/htop/htoprc;
  ".config/fastfetch/config.jsonc".source = ./Dots/fastfetch/config.jsonc;
  ".config/cava/config".source = ./Dots/cava/config;
  ".config/cava/shaders/spectrogram.frag".source = ./Dots/cava/shaders/spectrogram.frag;
  ".config/cava/shaders/bar_spectrum.frag".source = ./Dots/cava/shaders/bar_spectrum.frag;
  ".config/cava/shaders/pass_through.vert".source = ./Dots/cava/shaders/pass_through.vert;
  ".config/cava/shaders/northern_lights.frag".source = ./Dots/cava/shaders/northern_lights.frag;
  ".config/cava/shaders/winamp_line_style_spectrum.frag".source = ./Dots/cava/shaders/winamp_line_style_spectrum.frag;
  ".config/hypr/Scripts/Inicio.zsh".executable = true;
  ".config/hypr/Scripts/WallPaper.zsh".executable = true;
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  nixpkgs.config.allowUnfree = true;
}
