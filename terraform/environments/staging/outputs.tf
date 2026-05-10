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

output "vm_name" {
  description = "Name of the staging Linux virtual machine"
  value       = module.compute.vm_name
}

output "admin_username" {
  description = "Admin username for SSH access"
  value       = module.compute.admin_username
}

output "website_url" {
  description = "HTTP URL of the deployed static web app"
  value       = "http://${module.network.public_ip_address}"
}

output "storage_account_name" {
  description = "Name of the staging Azure Storage Account"
  value       = module.storage.storage_account_name
}

output "storage_container_name" {
  description = "Name of the staging Blob Storage container"
  value       = module.storage.storage_container_name
}