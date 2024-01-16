{ pkgs, ... }:
{
  environment.gnome.excludePackages = (with pkgs; [
    gnome.atomix 
    gnome.cheese
    gnome.epiphany
    gnome.geary
    gnome.gnome-contacts
    gnome-console
    gnome.gnome-maps
    gnome.gnome-music
    gnome.gnome-software
    gnome.hitori 
    gnome.iagno 
    gnome.totem 
    gnome.tali 
    gnome.yelp 
 ]);

}