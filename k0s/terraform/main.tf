resource "proxmox_vm_qemu" "vm" {
  name        = var.vm_name
  description = var.vm_desc
  target_node = var.vm_target_node

  clone      = var.vm_clone
  full_clone = true
  memory     = var.vm_memory

  scsihw = var.vm_scsihw

  hotplug    = var.vm_hotplug
  ciuser     = "root"
  cipassword = var.cipassword
  sshkeys    = var.ssh_public_key
  ipconfig0  = "ip=${var.vm_address},gw=${var.vm_gateway}"
  nameserver = var.vm_dns_server
  os_type    = "cloud-init"
  bios       = "seabios"

  cpu {
    type    = "host"
    cores   = var.vm_cpu_cores
    sockets = var.vm_cpu_sockets
  }
  network {
    id        = var.vm_network_id
    model     = var.vm_network_model
    bridge    = var.vm_network_bridge
    link_down = false
  }
  disk {
    slot    = var.cloudinit_disk_slot
    storage = var.vm_disk_storage
    type    = "cloudinit"
  }
  disk {
    slot    = var.vm_disk_slot
    storage = var.vm_disk_storage
    size    = var.vm_disk_size
  }
  bootdisk = var.vm_bootdisk
  boot     = var.vm_boot
}

