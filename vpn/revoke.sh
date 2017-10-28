#!/usr/bin/env bash

# Ensure variables are present
_=${KEY_NAME?'Missing KEY_NAME'}

sudo docker-compose run --rm openvpn ovpn_revokeclient $KEY_NAME remove
