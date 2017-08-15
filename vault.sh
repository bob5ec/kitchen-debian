#!/bin/bash
# vault without mlock, which is not supported by kernel 3.16 (not made for production)
docker run -d --name=dev-vault -e 'SKIP_SETCAP=true' -p 8200:8200 vault

#docker run --name vault-server \
#    -e 'SKIP_SETCAP=true' \
#    -e 'VAULT_LOCAL_CONFIG={"listener" "tcp": {"address": "127.0.0.1:8200", "tls_disable": "1"}, "backend" "file": {"path": "/vault/file"}}, "default_lease_ttl": "168h", "max_lease_ttl": "720h", "disable_mlock": true' \
#    -p 127.0.0.1:8200:8200 \
#    -v ~/admin/vault-server:/vault/file \
#    vault server

#setup vault
vault auth
vault mount ssh
vault write ssh/roles/otp_key_role \
    key_type=otp \
    default_user=root \
    cidr_list=192.168.0.0/16
