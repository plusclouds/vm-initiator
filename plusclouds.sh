#!/bin/bash

# We are updating the password of the server here.
URL=$(printenv PLUSCLOUDS_API)
SERIAL=$(dmidecode -s system-serial-number)
META=$(curl -s $URL/v2/iaas/virtual-machines/meta-data?uuid=$SERIAL)
PASSWORD=$(echo $META | jq -r '.data.password')
echo root:$PASSWORD | chpasswd
