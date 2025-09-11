{ pkgs, ... }:


{

##### GLOBAL CONFIGURATION #####

  home.username = "alerion";
  home.homeDirectory = "/home/alerion/";
  home.stateVersion = "25.05";
  targets.genericLinux.enable = true;

  programs.home-manager.enable = true;
  home.enableNixpkgsReleaseCheck = false;

  xdg.enable = true;

  home.packages = with pkgs; [
    vscode
    obsidian
    pinta
    podman-desktop
    signal-desktop
    vlc
    freetube
    github-desktop
    flameshot
    libreoffice
    neovim
  ];

  imports = [
    ./applications/alacritty.nix
    ./applications/chromium.nix
    ./applications/fastfetch.nix
    ./applications/firefox.nix
    ./applications/freetube.nix
    ./applications/git.nix
    ./applications/tmux.nix
    ./applications/btop.nix
    ./applications/signal.nix
    ./applications/mimeapps.nix
   # ./applications/kde-config.nix
    ./applications/vesktop.nix
    ./applications/rpm-packages.nix
    ./applications/rpm-nvidia.nix
    ./applications/protonge-custom.nix
    ./applications/mpv.nix
  ];

}
