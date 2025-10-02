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

variable "lxcDefaultPass" {
  description = "Default password for all the created lxc containers"
  sensitive = true
}