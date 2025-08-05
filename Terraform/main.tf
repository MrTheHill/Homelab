terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "3.0.2-rc03"
    }
  }
}

variable "ProxmoxAPIKey" {
  description = "Proxmox API Key"
  sensitive = true
}

variable "ProxmoxAPIURL" {
  description = "Proxmox API endpoint"
}

variable "ProxmoxUser" {
  
}

variable "ProxmoxPass" {
  sensitive = true
}

provider "proxmox" {
    pm_api_url = var.ProxmoxAPIURL
    pm_user = var.ProxmoxUser
    pm_password = var.ProxmoxPass
    pm_tls_insecure = true
    pm_debug = true
}

resource "proxmox_vm_qemu" "TestVM" {
    name = "TestVM1"
    target_node = "pve"

}