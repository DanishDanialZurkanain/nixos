{ pkgs, ... }:
{
  environment.gnome.excludePackages = (with pkgs.gnome; [
    atomix 
    cheese
    epiphany
    geary
    gnome-contacts
    gnome-console
    gnome-maps
    gnome-music
    gnome-software
    hitori 
    iagno 
    totem 
    tali 
    yelp 
 ]);

}