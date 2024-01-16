{ pkgs, ... }:
{
  environment.gnome.excludePackages = (with pkgs; [
    gnome.atomix 
    gnome.cheese
    gnome.epiphany
    gnome.geary
    gnome.gnome-contacts
    gnome.gnome-calendar
    gnome.gnome-clocks
    gnome.gnome-maps
    gnome.gnome-music
    gnome.gnome-software
    gnome.gnome-shell-extensions
    gnome.gnome-weather
    gnome.hitori 
    gnome.iagno 
    gnome.totem 
    gnome.tali 
    gnome.yelp 
    gnome-console
    gnome-tour
 ]);

}