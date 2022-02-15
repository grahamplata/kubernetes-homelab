#!/bin/bash

TAILSCALE_ADDR="100.66.72.63"
HOST="192.168.6.42"
USER="ubuntu"
NAME="my-k3s"
VERSION="v1.23.3+k3s1"

# By default, flannel selects the first interface on a host
# override this behavior with the --flannel-iface flag.
# Explicitly set IP address to advertise for node using the --node-ip flag.

k3sup install \
    --ip "$HOST" \
    --user "$USER" \
    --ssh-key "$HOME/.ssh/id_rsa.pub" \
    --k3s-extra-args "--flannel-iface tailscale0 \
        --advertise-address $TAILSCALE_ADDR \
        --node-ip $TAILSCALE_ADDR \
        --node-external-ip $TAILSCALE_ADDR" \
    --k3s-channel "$VERSION" \
    --context "$NAME" \
    --local-path "$HOME/.kube/config" \
    --merge
