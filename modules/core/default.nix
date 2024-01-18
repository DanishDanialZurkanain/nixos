{
    imports =
          [(import ./docker-compose)]
        ++[(import ./gnome/applications.nix)]
        ++[(import ./podman)]
        ++[(import ./xterm)];
}