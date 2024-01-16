# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
      # Include the results of the hardware scan.
      [(import ./hardware-configuration.nix)]
      # System modules 
      ++[(import ../../modules/core)];

  # Bootloader.
  imports = [(import ../../systems/boot)]

  # Network
  imports = [(import ../../systems/network)]

  # Locale
  imports = [(import ../../systems/locale)]
    
  # Desktop
  imports = [(import ../../modules/core/gnome/desktop.nix)]

  # Printing
    imports = [(import ../../systems/printing)]

  # Sound
  imports = [(import ../../systems/sound)]

  # User
  imports = [(import ../../systems/user)]

  # Configs
  imports = [(import ../../systems/config)]

  system.stateVersion = "23.11"; # Did you read the comment?
}
