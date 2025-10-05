FROM archlinux:base-devel

RUN pacman-key --init

RUN pacman -Syu --noconfirm kitty neovim fish starship git startup-notification fzf ripgrep fd go nodejs jq nnn

# dbeaver
RUN pacman -S --noconfirm jdk-openjdk dbeaver

# Lazygit
RUN pacman -S --noconfirm lazygit

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

CMD ["fish"]
