FROM archlinux:base-devel

RUN pacman -Syu --noconfirm kitty neovim fish starship git startup-notification fzf bat ripgrep fd go nodejs jq nnn nodejs

# Yay for AUR
RUN git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
RUN yay -Y --gendb

# dbeaver
RUN pacman -S --noconfirm jdk-openjdk dbeaver

# Lazygit
RUN pacman -S --noconfirm lazygit

# Allow copying and pasting from container
RUN pacman -S --noconfirm xsel wlroots

# Htop
RUN pacman -S --noconfirm htop

# PHP
# RUN pacman -S --noconfirm php php-gd

# Chawan
# TODO (https://git.sr.ht/~bptato/chawan)

# Expose host docker to container, useful for things like minikube.
# Hopefully it doesn't cause any issues.
RUN ln -s /usr/bin/distrobox-host-exec /usr/local/bin/docker


CMD ["fish"]
