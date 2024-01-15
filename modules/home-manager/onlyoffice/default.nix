{ pkgs, ... }:
{
    home.packages = with pkgs; [
      pkgs.onlyoffice-bin
    ];
}