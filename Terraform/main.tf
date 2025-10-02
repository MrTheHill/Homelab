terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "3.0.2-rc03"
    }
  }
}

provider "proxmox" {
  endpoint = var.ProxmoxEndpoint
  api_token = var.ProxmoxAPIKey
}

resource "proxmox_vm_qemu" "TestVM" {
    name = "TestVM1"
    target_node = "pve"

}