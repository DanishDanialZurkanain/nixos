{ pkgs, ... }:
{
    programs.waybar = {
        enable = true;
        settings = {
          mainBar = {
          font-family = "FantasqueSansM Nerd Font Mono";
          layer = "top";
          position = "top";
          height = 30;
          output = [ "eDP-1" ];
          modules-left = [ "hyprland/workspaces" ];
          modules-center = [];
          modules-right = [ "pulseaudio" "battery" "network" "clock" "custom/powermenu" ];

          "battery" = {
              "bat" = "BAT0";
              "interval" = 60;
              "states" = {
                  "warning" = 30;
                  "critical" = 15;
              };
              "format" = "{capacity}% {icon}";
              "format-icons" = [ "" "" "" "" "" ];              
              "max-length" = 25;
          };
              
          "clock" = {
            "tooltip-format" = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
            "format-alt" = "{:%Y-%m-%d}";
          };

          "network" = {
              "interface" = "wlo1";
              "format" = "{ifname}";
              "format-wifi" = "{essid} ({signalStrength}%) ";
              "format-ethernet" = "{ipaddr}/{cidr} 󰊗";
              "format-disconnected" = ""; # An empty format will hide the module.
              "tooltip-format" = "{ifname} via {gwaddr} 󰊗";
              "tooltip-format-wifi" = "{essid} ({signalStrength}%) ";
              "tooltip-format-ethernet" = "{ifname} ";
              "tooltip-format-disconnected" = "Disconnected";
              "max-length" = 50;
          };

          "pulseaudio" = {
              "format" = "{volume}% {icon}";
              "format-bluetooth" = "{volume}% {icon}";
              "format-muted" = "";
              "format-icons" = {
                  "headphone" = "";
                  "hands-free" = "";
                  "headset" = "";
                  "phone" = "";
                  "portable" = "";
                  "car" = "";
                  "default" = ["" ""];
              };
              "scroll-step" = 1;
              "on-click" = "pavucontrol";
              "ignored-sinks" = ["Easy Effects Sink"];
          };

          "hyprland/workspaces" = {
            "format" = "{icon}";
            "on-click" = "activate";
            "format-icons" = {
              "urgent" = "󰊠";
              "active" = "󰮯";
              "default" = "";
            };
            "sort-by-number" = true;
          };

          "custom/powermenu" = {
            "format" = " 󰐥 ";
            "on-click" = "exec sh /home/danial/.config/nixos/modules/home-manager/waybar/scripts/powermenu.sh";
          };
        };
      };
      style = ''
      * {
          border: none;
          border-radius: 0;
          font-family: FantasqueSansM Nerd Font Mono;
          min-height: 20px;
      }

      window#waybar {
          background: transparent;
      }

      window#waybar.hidden {
          opacity: 0.2;
      }

      #workspaces { 
        background-color: #272e33;
        border-radius: 5px;
        margin: 5px;
      }

      #workspaces button {
        background: transparent;
        padding: 5px;
      }

      #clock {
        background-color: #272e33;
        border-radius: 5px;
        margin: 5px;
        padding: 0 8px;
      }

      #battery {
        background-color: #272e33;
        border-radius: 5px;
        margin: 5px;
        padding: 0 8px;
      }

      #network {
        background-color: #272e33;
        border-radius: 5px;
        margin: 5px;
        padding: 0 8px;
      }

      #custom-powermenu {
        background-color: #272e33;
        border-radius: 5px;
        margin: 5px;
        padding: 0 5px;
      }

      #pulseaudio {
        background-color: #272e33;
        border-radius: 5px;
        margin: 5px;
        padding: 0 8px;
      }
      '';
    };
}