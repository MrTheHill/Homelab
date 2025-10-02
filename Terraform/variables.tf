variable "ProxmoxURL" {
  description = "Proxmox api url"
}

variable "ProxmoxUser" {
  description = "Proxmox Username"
}

variable "ProxmoxPass" {
  description = "Proxmox User password"
  sensitive = true
}