{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.danial = {
    isNormalUser = true;
    description = "Danish Danial";
    extraGroups = [ "networkmanager" "wheel"  "docker" ];
    packages = with pkgs; [];
    shell = pkgs.zsh;
  };
}