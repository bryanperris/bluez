#!/bin/bash

if [ -f config.status ]; then
	sudo make maintainer-clean
fi

./bootstrap

./configure --prefix=/usr \
	--mandir=/usr/share/man \
	--sysconfdir=/etc \
	--localstatedir=/var \
    --enable-external-ell \
    --with-package=ell \
	--enable-mesh \
	--enable-debug \
	--enable-experimental \
	--enable-tools \
	--enable-logger \
	--disable-datafiles
	--enable-library \
	--enable-maintainer-mode

make -j4
sudo make install

sudo ln -sf /usr/libexec/bluetooth/bluetoothd /usr/lib/bluetooth/bluetoothd
sudo systemctl daemon-reload
sudo service bluetooth restart
