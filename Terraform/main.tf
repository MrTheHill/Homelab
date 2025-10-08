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

resource "proxmox_lxc" "DockerLXC" {
  target_node = "pve"
  hostname = "Docker-01"
  vmid = "201"
  ostemplate = var.osTemplate
  password = var.lxcDefaultPass
  unprivileged = true
  start = true

  features {
    nesting = true
  }

  rootfs {
    storage = "local-lvm"
    size = "50G"
  }

  network {
    name = "eth0"
    bridge = "vmbr0"
    ip = var.ips[0]
  }
}