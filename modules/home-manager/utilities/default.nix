{ pkgs, ... }:
{
    home.packages = with pkgs; [
      nitch

      # Archives
      p7zip
      unzip
      xz
      zip

      # Utils
      eza # A modern replacement for ‘ls’
      vim

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