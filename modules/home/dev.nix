{ config, pkgs, ... }:

{
  home.packages = with pkgs;  [
    openjdk21
    maven
    nodejs_20
    nodePackages.angular-cli
  ];
  programs.java = {
    enable = true;
    package = pkgs.openjdk21
  };
  programs.jetbrains.idea = {
    enable = true;
    package = pkgs.jetbrains.idea-ultimate;
  };
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    extensions = with pkgs.vscode-extensions; [
      vscode-java-pack
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

