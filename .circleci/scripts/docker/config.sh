#!/bin/bash

cat <<EOF >./.bob.docker.config.json
{
    "auths": {
    "https://index.docker.io/v1/": {
        "auth": "${BOB_DOCKER_AUTH_TOKEN}"
    }
    }
}
EOF

ls -alh ./.bob.docker.config.json

mkdir -p ~/.docker/

cat ./.bob.docker.config.json | tee ~/.docker/config.json
