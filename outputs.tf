output "vm_public_ip" {
  description = "Public IP of the VM"
  value       = azurerm_public_ip.pip.ip_address
}

output "ssh_username" {
  value = var.admin_username
}
