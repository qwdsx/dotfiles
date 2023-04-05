
systemctl start --user mpd.service
systemctl enable --now networkmanager.service
systemctl enable --now dhcpcd.service