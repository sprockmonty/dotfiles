if status is-interactive
	set fish_greeting 
	abbr -a vim 'nvim'
	abbr -a cdp 'cd ~'
	abbr -a cdc 'cd $WD'
	abbr -a f 'findfzf'
	abbr -a gitc 'git commit -m'
	abbr -a pull 'git pull'
	abbr -a add 'git add .'
	abbr -a push 'git push'
	abbr -a lint 'golangci-lint run'
	abbr -a bazel 'bazelisk'
	abbr -a bench 'go test -bench=.'
	abbr -a screen 'gnome-screenshot --interactive'
	abbr -a cdn 'cd ~/Documents/notes'
	abbr -a lg 'lazygit'
	source ~/bin/wd
	export PATH="$HOME/.config/composer/vendor/bin:$HOME/bin:/usr/local/go/bin:$HOME/go/bin:$PATH"
	export FUNCTIONS_CORE_TOOLS_TELEMETRY_OPTOUT='1'
	fzf_configure_bindings --directory=\cf
	starship init fish | source
end
