#!/bin/bash
./bootstrap-configure
./configure --prefix=/opt/bluez --mandir=/opt/bluez/share/man --sysconfdir=/etc --localstatedir=/var --enable-mesh --enable-external-ell --with-package=ell
make clean
make
sudo rm -rf /opt/bluez
sudo make install
sudo cp custom.bluetooth.service /etc/systemd/system/bluetooth.target.wants/bluetooth.service
sudo systemctl daemon-reload
sudo service bluetooth restart
