module "cloudflare" {
  source             = "./cloudflare"
  cloudflare_api_key = var.cloudflare_api_key
  cloudflare_email   = var.cloudflare_email
  homelab_0_ip       = var.homelab_0_ip
  homelab_1_ip       = var.homelab_1_ip
  homelab_2_ip       = var.homelab_2_ip
  homelab_3_ip       = var.homelab_3_ip
}

module "tailscale" {
  source            = "./tailscale"
  tailscale_api_key = var.tailscale_api_key
  tailscale_domain  = var.tailscale_domain
}
