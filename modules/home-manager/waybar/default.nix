{ pkgs, ... }:
{
    programs.waybar = {
        enable = true;
        settings = {
          mainBar = {
          layer = "top";
          position = "top";
          height = 30;
          output = [
            "eDP-1"
            "HDMI-A-1"
          ];
          modules-left = [];
          modules-center = [ "clock" ];
          modules-right = [];
              
          "clock" = {
            "tooltip-format": "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>",
            "format-alt": "{:%Y-%m-%d}"
          };
        };
      };
    };
}