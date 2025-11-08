#!/usr/bin/env sh
echo Installing doas
sudo xbps-install -y opendoas

echo Configuring doas
sudo echo permit keepenv "$USER" as root > /etc/doas.conf

echo Removing sudo
doas xbps-remove -Fy sudo
