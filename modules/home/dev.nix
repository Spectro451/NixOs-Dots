{ config, pkgs, ... }:

{
  home.packages = with pkgs;  [
    #openjdk21
    #maven
    nodejs_22
    pnpm
    #jetbrains.idea-community
    #lombok
    #postman
  ];
  #programs.java = {
   # enable = true;
    #package = pkgs.openjdk21;
  #};
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    profiles.default.extensions = with pkgs.vscode-extensions; [
      vscjava.vscode-java-pack
      redhat.java
      vscjava.vscode-maven
      vscjava.vscode-java-debug
      vscjava.vscode-java-test
      esbenp.prettier-vscode
      ms-python.python
      eamodio.gitlens
    ];
  };
}

