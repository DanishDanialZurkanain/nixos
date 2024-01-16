# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =

    # Include the results of the hardware scan.
    [(import ./hardware-configuration.nix)]
  
    # System modules 
    ++[(import ../../modules/core)]

    # Bootloader.
    ++[(import ../../system/boot)]

    # Network
    ++[(import ../../system/network)]

    # Locale
    ++[(import ../../system/locale)]
      
    # Desktop
    ++[(import ../../modules/core/gnome/desktop.nix)]

    # Printing
    ++[(import ../../system/printing)]

    # Sound
    ++[(import ../../system/sound)]

    # User
    ++[(import ../../system/user)]

    # Configs
    ++[(import ../../system/config)];

  system.stateVersion = "23.11"; # Did you read the comment?
}
