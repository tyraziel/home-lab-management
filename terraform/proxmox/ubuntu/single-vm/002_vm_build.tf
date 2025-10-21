resource "proxmox_vm_qemu" "tf-ubuntu-test" {
  name        = "${var.vm_guest_name}"
  desc        = "A VM created for terraform testing."
  target_node = var.proxmox_target_node
  tags = null

  clone = var.clone_name
  full_clone = true

  disk {
    type = "disk"
    storage = "local-lvm"
    slot = "scsi0"
    size = "40G"
    emulatessd = true
    discard = true
    iothread = true
    format = "raw"
  }

  network {
    id = 0
    model = "virtio"
    bridge = "vmbr0"
  }

  bios = "ovmf"
  agent = 1

  cores   = 4
  sockets = 1
  memory  = 8192

  hotplug = "disk,network,usb"

  scsihw = "virtio-scsi-single"

  os_type   = var.os_type
  ipconfig0 = "ip=dhcp"   # <--- maybe change this

  skip_ipv6 = true
  
}
