variable "rg_name" {
  description = "Resource Group Name"
  default     = "proj6-rg"
}

variable "location" {
  description = "Azure region"
  default     = "Canada Central"
}

variable "prefix" {
  description = "Prefix for all resources"
  default     = "proj6"
}

variable "vnet_cidr" {
  default = "10.20.0.0/16"
}

variable "subnet_cidr" {
  default = "10.20.1.0/24"
}

variable "vm_size" {
  description = "VM size (2 CPU / 4GB RAM)"
  default     = "Standard_B2s"
}

variable "admin_username" {
  default = "azureuser"
}

variable "admin_password" {
  description = "Admin password for VM"
  sensitive   = true
}
