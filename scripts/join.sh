#!/bin/bash

HOST="192.168.6.44"
TAILSCALE_ADDR="100.70.215.2"
MASTER_NODE="100.66.72.63"
USER="ubuntu"
VERSION="v1.23.3+k3s1"

k3sup join \
    --ip "$HOST" \
    --server-ip "$MASTER_NODE" \
    --user "$USER" \
    --ssh-key "$HOME/.ssh/id_rsa.pub" \
    --k3s-extra-args "--flannel-iface tailscale0 \
        --node-ip $TAILSCALE_ADDR \
        --node-external-ip $TAILSCALE_ADDR" \
    --k3s-channel "$VERSION" \
