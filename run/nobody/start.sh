#!/usr/bin/dumb-init /bin/bash

# setup environment
export XDG_CONFIG_HOME="/config/xdg"

# run app
mkdir -p '/config/prowlarr' ; /usr/lib/prowlarr/bin/Prowlarr -nobrowser -data=/config/prowlarr