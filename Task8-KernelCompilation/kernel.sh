#!/usr/bin/env bash

curl -fLO "https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.0.9.tar.xz"
sudo apt-get install git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison
tar xvzf linux-5.0.9.tar.xz 
cd linux-5.0.9
cp /boot/config-4.19.0-kali4-amd64 .config
make menuconfig
make
make modules_install
sudo make install

