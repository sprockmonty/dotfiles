FROM archlinux:base-devel

RUN pacman -Syu --noconfirm kitty neovim fish starship git startup-notification fzf ripgrep fd go nodejs jq nnn nodejs

# dbeaver
RUN pacman -S --noconfirm jdk-openjdk dbeaver

# Lazygit
RUN pacman -S --noconfirm lazygit

# Allow copying and pasting from container
RUN pacman -S --noconfirm xsel wlroots

CMD ["fish"]
