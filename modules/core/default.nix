{
    imports =
          [(import ./docker-compose)]
        ++[(import ./gnome/application.nix)]
        ++[(import ./podman)]
        ++[(import ./xterm)];
}