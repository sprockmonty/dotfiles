FROM archlinux:latest

RUN pacman -Syu --noconfirm kitty neovim fish starship git startup-notification fzf ripgrep fd make gcc go nodejs jq nnn

# dbeaver
RUN pacman -S --noconfirm jdk-openjdk dbeaver

# Lazygit
RUN pacman -S --noconfirm lazygit

CMD ["fish"]
