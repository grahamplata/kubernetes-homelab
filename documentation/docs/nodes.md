---
id: node-setup
title: Node Setup
tags:
  - Nodes
---

- Download [Balena Etcher](https://www.balena.io/etcher/) ~ `brew install --cask balenaetcher`
- Grab Ubuntu Server for arm64 ~ `wget https://cdimage.ubuntu.com/releases/20.04.2/release/ubuntu-20.04.2-preinstalled-server-arm64+raspi.img.xz`
- Create an empty file named `ssh` in the boot partition to enable ssh.
- Add the following to the end of the line in `/boot/cmdline.txt` ~ ` cgroup_enable=cpuset cgroup_memory=1 cgroup_enable=memory`
- Find the RPi IP with `ping -c raspberrypi.local` default config
- Copy over your ssh key with: `ssh-copy-id pi@raspberrypi.local`
