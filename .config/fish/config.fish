if status is-interactive
	set fish_greeting 
	abbr -a vim 'nvim'
	abbr -a cdp 'cd ~'
	abbr -a f 'findfzf'
	abbr -a gitc 'git commit -m'
	abbr -a pull 'git pull'
	abbr -a add 'git add .'
	abbr -a push 'git push'
	abbr -a lint 'golangci-lint run'
	abbr -a bazel 'bazelisk'
	abbr -a bench 'go test -bench=.'
	abbr -a screen 'flameshot'
	abbr -a cdn 'cd ~/Documents/notes'
	abbr -a sshkitty 'kitten ssh'
	abbr -a icat 'kitten icat --align left'
	abbr -a yay 'yay --aur'
	abbr -a lg 'lazygit'
	export PATH="$HOME/.config/composer/vendor/bin:$HOME/bin:/usr/local/go/bin:$HOME/go/bin:$PATH"
	export FUNCTIONS_CORE_TOOLS_TELEMETRY_OPTOUT='1' # Azure function tools.
	fzf_configure_bindings --directory=\cf
	starship init fish | source
	export VISUAL='nvim' # Default editors.
	export EDITOR='nvim'
end
