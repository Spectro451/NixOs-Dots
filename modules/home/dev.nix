{ config, pkgs, ... }:

{
  home.packages = with pkgs;  [
    openjdk21
    kotlin
    #maven
    nodejs_22
    nest-cli
    pnpm
    #jetbrains.idea-community
    #lombok
    postman
    android-studio
    libglvnd
    tree-sitter
    gcc
  ];
  #programs.java = {
   # enable = true;
    #package = pkgs.openjdk21;
  #};
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    profiles.default.extensions = with pkgs.vscode-extensions; [
      esbenp.prettier-vscode
    ];
  };
}

