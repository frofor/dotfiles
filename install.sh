export DOTFILES=~/.local/src/frofor/dotfiles

sudo xbps-install -y git
git clone https://codeberg.org/frofor/dotfiles.git "$DOTFILES"
cd "$DOTFILES"

./install/doas.sh
./install/shell.sh
./install/config.sh
