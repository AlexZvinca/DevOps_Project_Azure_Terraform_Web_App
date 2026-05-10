output "resource_group_name" {
  description = "Name of the created Azure Resource Group"
  value       = azurerm_resource_group.main.name
}

output "resource_group_location" {
  description = "Azure location of the created Resource Group"
  value       = azurerm_resource_group.main.location
}

output "vnet_name" {
  description = "Name of the staging virtual network"
  value       = module.network.vnet_name
}

output "network_security_group_name" {
  description = "Name of the staging network security group"
  value       = module.network.network_security_group_name
}

output "public_ip_address" {
  description = "Public IP address created for the staging environment"
  value       = module.network.public_ip_address
}