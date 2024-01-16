{
  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;   
    desktopManager = {
      gnome = {
        enable = true;
      };
    };
    displayManager = {
      gdm.enable = true;
    }; 
  };
  
  # Configure keymap in X11
  services.xserver = {
    layout = "us";
  };
}