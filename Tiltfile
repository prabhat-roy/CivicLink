# CivicLink — Tilt config for local Kubernetes development
# Brings up core services with hot reload via `tilt up`.

# Load the registry of services (one per directory under src/<domain>/<service>/)
def load_services():
    services = []
    for path in str(local("find src -mindepth 2 -maxdepth 2 -type d 2>/dev/null", quiet=True)).splitlines():
        if path:
            services.append(path)
    return services

# Resource groups by domain
config.define_string_list("services", args=True)
cfg = config.parse()
filtered = cfg.get("services", [])

# Helm charts for infra dependencies (postgres, mongo, kafka, etc.)
docker_compose("./docker-compose.yml")

# Per-service: resource declaration is added by each service's tilt config
for svc in load_services():
    name = svc.split("/")[-1]
    if filtered and name not in filtered:
        continue
    # custom_build / docker_build per service is registered by its own Tiltfile.local
    if read_file("%s/Tiltfile.local" % svc, default = "") != "":
        load_dynamic("%s/Tiltfile.local" % svc)