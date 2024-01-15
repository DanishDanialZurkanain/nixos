{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      ls = "eza";
      
      update = "sudo nixos-rebuild switch --flake /home/danial/.config/nixos#marge";
    };
  };
}