# Kubernetes Home Lab

- [Kubernetes Home Lab](#kubernetes-home-lab)
  - [Description](#description)
  - [Commands](#commands)
  - [Node Setup](#node-setup)
  - [Stack](#stack)
  - [Bill of Materials](#bill-of-materials)

## Description

My Kubernetes homelab configuration.

## Commands

```bash
# Diff release
helmfile -e home diff

# Sync release
helmfile -e home sync

# Target release
helmfile -e home --selector=name=openfaas sync
```

## Node Setup

- Download [Balena Etcher](https://www.balena.io/etcher/) ~ `brew install --cask balenaetcher`
- Grab Ubuntu Server for arm64 ~ `wget https://cdimage.ubuntu.com/releases/20.04.2/release/ubuntu-20.04.2-preinstalled-server-arm64+raspi.img.xz`
- Create an empty file named `ssh` in the boot partition to enable ssh.
- Add the following to the end of the line in `/boot/cmdline.txt` ~ ` cgroup_enable=cpuset cgroup_memory=1 cgroup_enable=memory`
- Find the RPi IP with `ping -c raspberrypi.local` default config
- Copy over your ssh key with: `ssh-copy-id pi@raspberrypi.local`

## Stack

- [K3s](https://k3s.io/) - (K3s) is a certified Kubernetes distribution built for IoT & Edge computing.
- [Helm](https://github.com/helm/helm) - Helm is a tool for managing Kubernetes charts.
- [Helmfile](https://github.com/roboll/helmfile) - Helmfile is a declarative spec for deploying helm charts.
- [Sops](https://github.com/mozilla/sops) - Sops is an editor of encrypted files
- [GPG](https://gnupg.org/) - Free encryption software that's compliant with the OpenPGP

## Bill of Materials

| Item                                                                                                                                   | Description | Quantity | Unit Price | Total Price |
| -------------------------------------------------------------------------------------------------------------------------------------- | ----------- | -------: | ---------: | ----------: |
| [Raspberry Pi 4 (4GB)](https://www.amazon.com/gp/product/B07TC2BK1X/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1)                  | Title       |        4 |      59.98 |     $239.92 |
| [SanDisk 32GB 2-Pack](https://www.amazon.com/gp/product/B087JCL881/ref=ppx_yo_dt_b_asin_title_o00_s02?ie=UTF8&psc=1)                   | Text        |        2 |      13.99 |      $27.98 |
| [Pi 4 Cluster Case](https://www.amazon.com/gp/product/B07MW24S61/ref=ppx_yo_dt_b_asin_title_o00_s01?ie=UTF8&psc=1)                     | Text        |        1 |      24.99 |      $24.99 |
| [Anker 60W 6 Port USB Charging Station](https://www.amazon.com/gp/product/B00P936188/ref=ppx_yo_dt_b_asin_title_o00_s02?ie=UTF8&psc=1) | Text        |        1 |      25.99 |      $25.99 |
| [USB A to Type C Cables](https://www.amazon.com/gp/product/B08G1HS6SL/ref=ppx_yo_dt_b_asin_title_o00_s01?ie=UTF8&psc=1)                | Text        |        2 |       9.99 |      $19.98 |
| [5-Pack Snagless Short Cat6](https://www.amazon.com/gp/product/B00C4U030G/ref=ppx_yo_dt_b_asin_title_o00_s01?ie=UTF8&psc=1)            | Text        |        1 |      11.49 |      $11.49 |
| [D-Link 8 Port Gigabit Ethernet Switch](https://www.amazon.com/gp/product/B00C4U030G/ref=ppx_yo_dt_b_asin_title_o00_s01?ie=UTF8&psc=1) | Text        |        1 |      31.22 |      $31.22 |
| **Total** _Taxes not applied_                                                                                                          |             |          |            | **$381.57** |

> Something I would consider upgrading would be a PoE switch coupled with the RaspberryPi PoE hats. This would eliminate the need for the need for extra cabling as well as make expanding nodes easier.
