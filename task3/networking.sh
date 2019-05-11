#!/usr/bin/env bash

ifconfig
sudo ifconfig enp3s0f1 down
ifconfig
sudo ifconfig enp3s0f1 up
ifconfig
sudo ifconfig wlp2s0 down
sudo ifconfig wlp2s0 up
sudo ifconfig
sudo ifconfig wlp2s0 192.168.1.22
sudo ifconfig
sudo ifconfig wlp2s0 -broadcast 192.168.1.254
sudo ifconfig wlp2s0
sudo ifconfig wlp2s0 -broadcast
sudo ifconfig wlp2s0 down
cd /etc/^C
cat /etc/resolv.conf
sudo vim /etc/resolv.conf
cat /etc/resolv.conf
route
route print
route -n
route add default gw 192.168.43.1
sudo route add default gw 192.168.43.1
route -n
sudo route del -net 0.0.0.0 gw 192.168.43.1 metric 0
route -n

