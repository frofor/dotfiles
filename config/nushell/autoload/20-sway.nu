if (tty) == /dev/tty1 {
	doas mkdir $env.XDG_RUNTIME_DIR
	doas chown ($env.USER):($env.USER) $env.XDG_RUNTIME_DIR
	chmod 700 $env.XDG_RUNTIME_DIR
	exec sway
}
