# https://carjorvaz.com/posts/rootless-podman-and-docker-compose-on-nixos/
{ pkgs, ...}:
{
  virtualisation = {
    containers.enable = true;
    containers.storage.settings = {
      storage = {
        driver = "overlay";
        runroot = "/run/containers/storage";
        graphroot = "/var/lib/containers/storage";
        rootless_storage_path = "/tmp/containers-danial";
        options.overlay.mountopt = "nodev, metacopy = on";
      };
    };

    oci-containers.backend = "podman";
    
    podman = {
      enable = true;
      enableNvidia = false;
      dockerCompat = true;
    };
  };
  
  environment.extraInit = ''
     if [ -z "$DOCKER_HOST" -a -n "$XDG_RUNTIME_DIR" ]; then
      export DOCKER_HOST="unix://$XDG_RUNTIME_DIR/podman/podman.sock"
    fi
  '';
}