{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enable Flakes and the new command-line tool
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  # environment.systemPackages = with pkgs; [];

  # Set default editor to vim
  environment.variables.EDITOR = "vim";

  # Gnome Related
  programs.dconf.enable = true;
  
  # Set default shell to ZSH
  programs.zsh.enable = true;

    # Hyprland
  programs.hyprland.enable = true;

  # Storage optimization
  nix.gc.automatic = true;
}