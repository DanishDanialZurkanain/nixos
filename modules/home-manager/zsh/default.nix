{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    shellAliases = {
      ls = "eza";
      
      zsh-update = "source /home/danial/.zshrc";

      nix-rebuild = "sudo nixos-rebuild switch --flake /home/danial/.config/nixos#marge";
      nix-garbage = "sudo nix-collect-garbage -d"; 
    };
  };
}