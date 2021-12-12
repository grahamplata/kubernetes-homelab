#!/usr/bin/env bash

# Installs the crontab file after node setup

DIR=$(pwd)/config
SSH_SERVERS="100.66.72.63 100.122.156.41 100.77.249.110 100.70.215.2"
SSH_USER="ubuntu"
CRONTAB_DATA=$(cat "${DIR}/crontab")

for SSH_SERVER in $(echo "${SSH_SERVERS}" | sort | uniq); do
  echo "$CRONTAB_DATA" | ssh "${SSH_USER}@${SSH_SERVER}" "crontab -"
done
