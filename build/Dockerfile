FROM archlinux:base-devel

RUN pacman-key --init

RUN pacman -Syu --noconfirm kitty neovim fish starship git startup-notification fzf bat ripgrep fd go nodejs jq nnn

# Yay for AUR
RUN git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
RUN yay -Y --gendb

# dbeaver
RUN pacman -S --noconfirm jdk-openjdk dbeaver

# Lazygit + delta
RUN pacman -S --noconfirm lazygit git-delta

# Allow copying and pasting from container
RUN pacman -S --noconfirm xsel wl-clipboard

# VLC
RUN pacman -S --noconfirm vlc
# Other codecs if you need them, possibly for firefox too, to play videos.
RUN pacman -S --noconfirm ffmpeg
RUN pacman -S --noconfirm vlc-plugin-ffmpeg

# Libreoffice
RUN pacman -S --noconfirm libreoffice-fresh hunspell-en_gb

# Image processing
RUN pacman -S --noconfirm gimp krita krita-plugin-gmic
# RUN yay -S krita-ai-tools

# Screenshot tool
RUN pacman -S --noconfirm flameshot

# Htop
RUN pacman -S --noconfirm htop

# PHP
# RUN pacman -S --noconfirm php php-gd

# Chawan
# TODO (https://git.sr.ht/~bptato/chawan)

# Expose host docker to container, useful for things like minikube.
# Hopefully it doesn't cause any issues.
# RUN ln -s /usr/bin/distrobox-host-exec /usr/local/bin/docker

# Freecad
RUN pacman -S --noconfirm freecad

CMD ["fish"]
