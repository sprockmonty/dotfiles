# My dotfiles
TODO: Add `install.sh` which does:
Install https://github.com/sharkdp/fd, fzf, ripgrep
https://github.com/sharkdp/bat - make alias in bin file (see github for details)
Bin files
Fine, I’ll install https://github.com/ryanoasis/nerd-fonts: 
Starship: https://github.com/starship/starship?tab=readme-ov-file
Install feh, picom
Install go formatters: https://github.com/segmentio/golines, https://github.com/mvdan/gofumpt

mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts && curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.tar.xz && tar xf FiraCode.tar.xz

install alacritty, nvim, fish

Fonts should be placed in ~/.local/share/fonts

In order to change colour schemes, first edit the alacritty config in
`.config/alacritty/alacritty.toml`. Then edit neovim in
`.config/nvim/init.lua`. Finally, edit starship in `.config/statship.toml`.

I tried alacritty, but kitty supports ligaturem, so I use that now. But the
alacritty config is still here just in case.

After installing fedora sway atomic, you can use 
```
rpm-ostree rebase fedora:fedora/VersionNumber/$(uname -m)/kinoite
```

To install kde too.

---
Installing fnm (fish compatible npm installer)
Run curl -fsSL https://fnm.vercel.app/install | bash --install-dir ~/bin/

Then add to a new file `~/.config/fish/conf.d/fnm.fish` the following:
```
fnm env --use-on-cd --shell fish | source
```
