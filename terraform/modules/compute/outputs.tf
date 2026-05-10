output "vm_name" {
  description = "Name of the Linux virtual machine"
  value       = azurerm_linux_virtual_machine.main.name
}

output "admin_username" {
  description = "Admin username for the Linux virtual machine"
  value       = azurerm_linux_virtual_machine.main.admin_username
}