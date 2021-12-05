#!/bin/bash

TAILSCALE_ADDR=
HOST=
USER=

k3sup install \
    --ip "$HOST" \
    --user "$USER" \
    --k3s-extra-args "--flannel-iface tailscale0 \
        --advertise-address $TAILSCALE_ADDR \
        --node-ip $TAILSCALE_ADDR \
        --node-external-ip $TAILSCALE_ADDR" \
    --k3s-channel latest \
    --context my-k3s \
    --local-path "$HOME/.kube/config" \
    --merge
