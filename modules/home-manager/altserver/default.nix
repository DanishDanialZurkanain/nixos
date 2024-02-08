{ pkgs, ... }:
{
    home.packages = with pkgs; [
        altserver-linux
    ];
}