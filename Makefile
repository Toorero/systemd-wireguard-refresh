.PHONY: install enable disable uninstall

install:
	stow -t / systemd-wireguard-refresh
	systemctl daemon-reload

enable:
	systemctl enable --now systemd-wireguard-refresh.timer

disable:
	systemctl disable --now systemd-wireguard-refresh.timer

uninstall:
	stow -t / -D systemd-wireguard-refresh
	systemctl daemon-reload
