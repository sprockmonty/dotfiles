#!/bin/bash

# Check if flatpack is installed on host, otherwise distrobox-host-exec command will fail.
if ! flatpak -h ; then
	echo "flatpak should be installed on host, install this first before starting container"
	exit 1
fi
docker build --tag 'arch-dev' .

# If you need true root access, run create with --root
# with systemd: distrobox create --init --name arch-dev --image arch-dev --additional-packages "systemd"
distrobox assemble create
