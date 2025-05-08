#!/bin/bash
docker build --tag 'arch-dev' .
# with systemd: distrobox create --init --name arch-dev --image arch-dev --additional-packages "systemd"
distrobox create --name arch-dev --image arch-dev
