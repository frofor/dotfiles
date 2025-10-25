echo Installing Nushell
doas xbps-install -y nushell

echo Setting default shell to Nushell
doas chsh -s /usr/bin/nu "$USER"
