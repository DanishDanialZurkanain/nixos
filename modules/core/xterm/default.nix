{ pkgs, services, ...}:
{
  services.xserver.excludePackages = [ pkgs.xterm ]; 
}