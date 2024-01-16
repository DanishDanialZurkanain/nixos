{ pkgs, ... }:
{
    home.packages = with pkgs; [
        adw-gtk3
        gradience
    ];
}