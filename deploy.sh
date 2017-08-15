#!/bin/bash
# running within debian preseed installer
# system is mounted in /target

#TODO provide search domain via dhcp
export VAULT_ADDR='http://vault.home.asd.bz:8200'
IP=`ip route get 1.1.1.1 | awk '{print $NF; exit}'`

cd /tmp

#TODO install via playbook?
wget -O - https://releases.hashicorp.com/vault/0.8.0/vault_0.8.0_linux_amd64.zip | gunzip > vault
chmod +x vault

./vault write ssh/creds/otp_key_role ip=$IP
