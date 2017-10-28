#!/usr/bin/env bash

# Ensure variables are present
_=${KEY_NAME?'Missing KEY_NAME'}


sudo docker-compose run --rm openvpn easyrsa build-client-full $KEY_NAME nopass
sudo docker-compose run --rm openvpn ovpn_getclient $KEY_NAME > ./keys/$KEY_NAME.ovpn
