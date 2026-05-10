output "storage_account_name" {
  description = "Name of the Azure Storage Account"
  value       = azurerm_storage_account.main.name
}

output "storage_container_name" {
  description = "Name of the Azure Blob Storage container"
  value       = azurerm_storage_container.main.name
}