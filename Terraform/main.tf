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

resource "proxmox_lxc" "TestLXC" {
  target_node = "pve"
  hostname = "Terraform"
  ostemplate = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
  password = var.lxcDefaultPass
  unprivileged = true

  rootfs {
    storage = "local-lvm"
    size = "8G"
  }

  network {
    name = "eth0"
    bridge = "vmbr0"
    ip = "dhcp"
  }
}