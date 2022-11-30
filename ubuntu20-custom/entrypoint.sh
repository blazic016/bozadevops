#!/bin/bash

USER_NAME="user"
USER_ID=${LOCAL_USER_ID:-9001}

echo "Starting with UID : $USER_ID"
useradd --shell /bin/bash -u $USER_ID -o -c "" -m $USER_NAME

echo 'root:1234' | chpasswd
echo ''$USER_NAME':1234' | chpasswd
usermod -aG sudo $USER_NAME

export HOME=/home/$USER_NAME
exec /usr/sbin/gosu $USER_NAME "$@"

