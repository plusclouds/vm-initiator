#!/bin/bash
URL=$(printenv LEO_API)
SERIAL=$(dmidecode -s system-serial-number)
META=$(curl -s $URL/v2/iaas/virtual-machines/meta-data?uuid=$SERIAL&runner=bash&version=1)

PASSWORD=$(echo $META | jq -r '.data.password')
HOSTNAME=$(echo $META | jq -r '.data.hostname')

#Changing password
echo root:$PASSWORD | chpasswd

#Changing the hostname
hostnamectl set-hostname $HOSTNAME
