#!/usr/bin/env bash

# Ensure variables are present
_=${HOSTNAME?'Missing HOSTNAME'}

sudo mkdir ./openvpn-data
sudo chcon -Rt svirt_sandbox_file_t ./openvpn-data/

sudo docker-compose run --rm openvpn ovpn_genconfig -u udp://$HOSTNAME
sudo docker-compose run --rm openvpn ovpn_initpki
