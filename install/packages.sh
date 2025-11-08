#!/usr/bin/env sh
install {
	echo Installing \`$1\`
	doas xbps-install -y "$1"
}

# Build tools / Drivers
install base-devel  # Base
install dbus-devel  # DBus
install mesa-dri    # Mesa
install python3     # Python
install python3-pip # Python package manager
install openjdk21   # Java
install zlib-devel  # Zig

# System
install NetworkManager         # Network manager
install NetworkManager-openvpn # VPN
install wlr-randr              # Monitors
install snooze                 # Cron

# Audio
install pulseaudio # Audio server
install mpv        # Media player
install socat      # Sockets

# Sway
install sway      # WM
install seatd     # Session manager
install polkit    # Permissions
install dunst     # Notifications
install Waybar    # Status bar
install grim      # Screenshots
install slurp     # Screen capture
install gammastep # Night light

# Neovim
install neovim                  # Text editor
install ripgrep                 # Fuzzy finder
install wl-clipboard            # Clipboard
install bash-language-server    # Bash LSP
install haskell-language-server # Haskell LSP
install lua-language-server     # Lua LSP

# Programs
install foot      # Terminal
install fuzzel    # App launcher
install gimp      # Image editor
install feh       # Image viewer
install btop      # Process monitor
install keepassxc # Password manager
install rsync     # Backup
install fzf       # Fuzzy finder
install trash-cli # Trash
