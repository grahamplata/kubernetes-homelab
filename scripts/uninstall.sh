#!/usr/bin/env bash

# Uninstalls k3s from agents

# To uninstall K3s from a server node, run:
# /usr/local/bin/k3s-uninstall.sh

# To uninstall K3s from an agent node, run:
# /usr/local/bin/k3s-agent-uninstall.sh

SSH_SERVERS="100.122.156.41 100.77.249.110 100.70.215.2"
SSH_USER="ubuntu"

for SSH_SERVER in $(echo "${SSH_SERVERS}" | sort | uniq); do
  ssh "${SSH_USER}@${SSH_SERVER}" "/usr/local/bin/k3s-agent-uninstall.sh -"
done
