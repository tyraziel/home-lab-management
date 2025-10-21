output "vm-hostname" {
  description = "name value of the Proxmox VM"
  value = proxmox_vm_qemu.tf-ubuntu-test.name
}

output "default-ipv4-address" {
  description = "default_ipv4_address value of the Proxmox VM"
  value = proxmox_vm_qemu.tf-ubuntu-test.default_ipv4_address
}

output "ssh-host" {
  description = "ssh_host value of the Proxmox VM"
  value = proxmox_vm_qemu.tf-ubuntu-test.ssh_host
}
