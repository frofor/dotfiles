#!/bin/zsh
if [ "$(tty)" = '/dev/tty1' ]; then
	doas mkdir -p "$XDG_RUNTIME_DIR"
	doas chown "$USER":"$USER" "$XDG_RUNTIME_DIR"
	chmod 700 "$XDG_RUNTIME_DIR"
	exec sway
fi

source <(cat "$ZDOTDIR/scripts/"*)
