sudo xbps-install -y git
git clone https://codeberg.org/frofor/dotfiles.git ~/.local/src/frofor/dotfiles
cd ~/.local/src/frofor/dotfiles

./install/doas.sh
./install/shell.sh
