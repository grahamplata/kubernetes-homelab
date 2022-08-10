terraform {
  required_providers {
    tailscale = {
      source  = "davidsbond/tailscale"
      version = "0.12.2"
    }
  }
}

provider "tailscale" {
  # Configuration options
  api_key = var.tailscale_api_key
  tailnet = var.tailscale_domain
}

resource "tailscale_acl" "homelab_acl" {
  acl = jsonencode({
    acls : [
      {
        // Allow all users access to all ports.
        action = "accept",
        users  = ["*"],
        ports  = ["*:*"],
    }],
  })
}

resource "tailscale_dns_preferences" "tailscale_preferences" {
  magic_dns = true
}

resource "tailscale_dns_nameservers" "tailscale_nameservers" {
  nameservers = [
    # Google Public DNS
    "8.8.8.8",
    "8.8.4.4",
    "2001:4860:4860::8888",
    "2001:4860:4860::8844",
    # Cloudflare Public DNS
    "1.1.1.1",
    "1.0.0.1",
    "2606:4700:4700::1111",
    "2606:4700:4700::1001",
  ]
}
