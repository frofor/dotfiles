#!/usr/bin/env sh
echo Installing Zsh
doas xbps-install -y zsh

echo Setting default shell to Zsh
doas chsh -s "$(which zsh)" "$USER"
