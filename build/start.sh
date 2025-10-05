#!/bin/bash

# Check if flatpack is installed on host, otherwise distrobox-host-exec command will fail.
if ! flatpak -h ; then
	echo "flatpak should be installed on host, install this first before starting container"
	exit 1
fi
if docker -h ; then 
	docker build --tag 'arch-dev' .
else
	podman build --tag 'arch-dev' .
fi

# TODO: Check if the font already exists before copying.
mkdir -p ~/.local/share/fonts && cp -r ../fonts/* ~/.local/share/fonts

cp -r ../.config/* ~/.config/

cp -r ../bin/* ~/bin/

cp ../.gitconfig ~/.gitconfig

# If you need true root access, run create with --root
# with systemd: distrobox create --init --name arch-dev --image arch-dev --additional-packages "systemd"
distrobox assemble create

# Commands to run once box is built:
exec "/usr/bin/distrobox-enter"  -n arch-dev  --  'distrobox-export' '--app' 'vlc'
exec "/usr/bin/distrobox-enter"  -n arch-dev  --  'distrobox-export' '--bin' '/usr/bin/freecad' '--export-path' '~/bin/freecad'
exec "/usr/bin/distrobox-enter"  -n arch-dev  --  'distrobox-export' '--app' 'firefox'
exec "/usr/bin/distrobox-enter"  -n arch-dev  --  'distrobox-export' '--app' 'krita'
exec "/usr/bin/distrobox-enter"  -n arch-dev  --  'distrobox-export' '--app' 'gimp'
exec "/usr/bin/distrobox-enter"  -n arch-dev  --  'distrobox-export' '--app' 'kitty'
exec "/usr/bin/distrobox-enter"  -n arch-dev  --  'distrobox-export' '--app' 'libreoffice'

# TODO ask for github user and email, then run
# git config --global user.name "$NAME"
# git config --global user.email "$EMAIL"
