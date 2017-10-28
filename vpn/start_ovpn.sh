#!/usr/bin/env bash

# SELinux fixes
checkmodule -M -m -o docker-openvpn.mod docker-openvpn.te
semodule_package -o docker-openvpn.pp -m docker-openvpn.mod
sudo semodule -i docker-openvpn.pp
sudo modprobe tun

sudo docker-compose up -d openvpn
