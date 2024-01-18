{
    imports =
          [(import ./docker-compose)]
        ++[(import ./gnome/applications.nix)]
        ++[(import ./podman)]
        ++[(import ./xdg-portal)]
        ++[(import ./xterm)];
}