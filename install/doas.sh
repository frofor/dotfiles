echo Installing doas
sudo xbps-install -y opendoas

echo Configuring doas
doas echo permit keepenv "$USER" as root > /etc/doas.conf

echo Removing sudo
doas xbps-remove -Fy sudo
