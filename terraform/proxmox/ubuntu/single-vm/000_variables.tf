variable "proxmox_cluster_dns"{
    type = string
    default = "proxmox.local"
}

variable "proxmox_port"{
    type = string
    default = "8006"
}

variable "proxmox_tls_insecure"{
    type = bool
    default = false
}

variable "proxmox_target_node"{
    type = string
    default = "proxmox.local"
}

variable "vm_guest_name"{
    type = string
    default = "tf-singletesting-001"
}

variable "clone_name"{
    type = string
    default = ""
}

variable "os_type"{
    type = string
    default = "" #ubuntu #centos #cloud-init ?
}
