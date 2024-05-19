{ config, pkgs, ... }:

{
  home.username = "zack";
  home.homeDirectory = "/home/zack";
  
  # Themes
  catppuccin.flavour = "mocha";

  imports = [
  ./gui/hyprland/hyprland.nix
  ./gui/xdg.nix
  ./editors/base.nix
  ./term/utils.nix
  ./term/base.nix
  ./term/shells.nix
  ./term/files.nix
  ./gui/browsers.nix
  ];

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
