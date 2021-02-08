# Kubernetes Home Lab

- [Kubernetes Home Lab](#kubernetes-home-lab)
  - [Description](#description)
  - [Stack](#stack)
  - [Bill of Materials](#bill-of-materials)

## Description

My Kubernetes homelab configuration.

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
| **Total**                                    *Taxes not applied*                                                                       |             |          |            | **$381.57** |

> Something I would consider upgrading would be a PoE switch coupled with the RaspberryPi PoE hats. This would eliminate the need for the need for extra cabling as well as make expanding nodes easier.
