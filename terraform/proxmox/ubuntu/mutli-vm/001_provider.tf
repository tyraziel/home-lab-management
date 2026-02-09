terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.2-rc07"
    }
  }
}

provider "proxmox" {
  pm_api_url      = "https://${var.proxmox_cluster_dns}:${var.proxmox_port}/api2/json"    # <--- change your IP or hostname to match
  pm_tls_insecure = var.proxmox_tls_insecure
}
