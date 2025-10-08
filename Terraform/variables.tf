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

variable "osTemplate" {
  description = "Location of the os for containers"
  default = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
}

variable "ips" {
  description = "list of avalable ip addresses"
  type = list(string)
}