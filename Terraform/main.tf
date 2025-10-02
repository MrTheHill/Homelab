terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
    }
  }
}

provider "proxmox" {
  pm_api_url = var.ProxmoxURL
  pm_user = var.ProxmoxUser
  pm_password = var.ProxmoxPass
  pm_tls_insecure = true
}
