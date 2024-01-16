{ pkgs, ... }:
{
    programs.kitty = {
        enable = true;
        settings = {
          font_family = "FantasqueSansM Nerd Font Mono";
          hide_window_decorations = true;
          theme = "Blazer";
          window_padding_width = 10;
        };
    };
}