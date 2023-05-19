#!/bin/bash

cat <<EOF >./.bob.docker.config.json
{
    "auths": {
    "https://index.docker.io/v1/": {
        "auth": "${AUTRE_BOB_DOCKER_AUTH_TOKEN}"
    }
    }
}
EOF

mkdir -p ~/.docker/
cat ./.bob.docker.config.json ~/.docker/config.json
