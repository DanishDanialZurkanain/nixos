{ pkgs, ... }:
{
    home.packages = with pkgs; [
      neofetch

      # Archives
      p7zip
      unzip
      xz
      zip

      # Utils
      eza # A modern replacement for ‘ls’

      # Networking Tools
      dnsutils  # `dig` + `nslookup`

      # Misc
      tree
      which

      # Productivity
      glow # Markdown previewer in terminal

      # System tools
      lm_sensors # for `sensors` command
    ];
}