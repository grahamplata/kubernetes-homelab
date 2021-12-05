#!/bin/bash

HOST=
TAILSCALE_ADDR=
MASTER_NODE=
USER=ubuntu

k3sup join \
    --ip "$HOST" \
    --server-ip "$MASTER_NODE" \
    --user "$USER" \
    --k3s-extra-args "--flannel-iface tailscale0 \
        --node-ip $TAILSCALE_ADDR \
        --node-external-ip $TAILSCALE_ADDR" \
    --k3s-channel latest
