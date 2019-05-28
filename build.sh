#!/bin/bash
./bootstrap-configure
./configure --prefix=/opt/bluez --mandir=/opt/bluez/share/man --sysconfdir=/etc --localstatedir=/var --enable-mesh --enable-external-ell --with-package=ell
make clean
make
sudo rm -rf /opt/bluez
sudo make install
sudo cp custom.bluetooth.service /etc/systemd/system/bluetooth.target.wants/bluetooth.service
mkdir ~/.config/meshctl
cp tools/mesh/prov_db.json ~/.config/meshctl
cp tools/mesh/local_node.json ~/.config/meshctl
sudo systemctl daemon-reload
sudo service bluetooth restart
