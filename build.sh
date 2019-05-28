#!/bin/bash
./configure --prefix=/opt/bluez --mandir=/opt/bluez/share/man --sysconfdir=/etc --localstatedir=/var --enable-mesh
make
sudo make install
sudo cp custom.bluetooth.service /etc/systemd/system/bluetooth.target.wants/bluetooth.service
sudo systemctl daemon-reload
sudo service bluetooth restart
