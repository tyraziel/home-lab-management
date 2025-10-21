output "ubuntu_vm_guests_information" {
  description = "default_ipv4_address value of the Proxmox VM"
  value = {for i, instance in proxmox_vm_qemu.tf_test_with_count : i => {
      ipv4     = instance.default_ipv4_address
      ssh_host = instance.ssh_host
      hostname = instance.name
    }
  }
}
