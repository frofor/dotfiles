link {
	echo Linking \`$1\` config to \`$2\`
	ln -sf "$DOTFILES/config/$1" "$2"
}

link dunst ~/.config/dunst
link foot ~/.config/foot
link fuzzel ~/.config/fuzzel
link gammastep ~/.config/gammastep
link git ~/.config/git
link gtk-3.0 ~/.config/gtk-3.0
link keepassxc ~/.config/keepassxc
link mpv ~/.config/mpv
link nushell ~/.config/nushell
link nvim ~/.config/nvim
link sway ~/.config/sway
link waybar ~/.config/waybar
