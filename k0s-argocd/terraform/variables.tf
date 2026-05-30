variable "api_url" {
  type = string
}

variable "token_id" {
  type = string
}

variable "token_secret" {
  type = string
}

variable "tls_insecure" {
  type = bool
}

variable "vm_name" {
  type = string
}

variable "vm_desc" {
  type = string
}

variable "vm_target_node" {
  type = string
}

variable "vm_clone" {
  type = string
}

variable "vm_address" {
  type = string
}

variable "vm_gateway" {
  type = string
}

variable "vm_dns_server" {
  type = string
}

variable "vm_cpu_cores" {
  type = number
}

variable "vm_cpu_sockets" {
  type = number
}

variable "vm_memory" {
  type = number
}

variable "vm_scsihw" {
  type = string
}

variable "vm_hotplug" {
  type = string
}

variable "vm_disk_size" {
  type = string
}

variable "vm_disk_type" {
  type = string
}

variable "vm_disk_storage" {
  type = string
}

variable "vm_disk_slot" {
  type = string
}

variable "vm_bootdisk" {
  type = string
}

variable "vm_boot" {
  type = string
}

variable "vm_network_id" {
  type = number
}

variable "vm_network_model" {
  type = string
}

variable "vm_network_bridge" {
  type = string
}

variable "ssh_public_key" {
  type = string
}

variable "cloudinit_disk_slot" {
  type = string
}

variable "cipassword" {
  type      = string
  sensitive = true
}
