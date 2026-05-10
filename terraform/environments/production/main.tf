terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "main" {
  name     = "rg-${var.project_name}-${var.environment}"
  location = var.location
}

module "network" {
  source = "../../modules/network"

  project_name              = var.project_name
  environment               = var.environment
  location                  = var.location
  resource_group_name       = azurerm_resource_group.main.name
  vnet_address_space        = var.vnet_address_space
  subnet_address_prefix     = var.subnet_address_prefix
  ssh_source_address_prefix = var.ssh_source_address_prefix
}

module "compute" {
  source = "../../modules/compute"

  project_name         = var.project_name
  environment          = var.environment
  location             = var.location
  resource_group_name  = azurerm_resource_group.main.name
  network_interface_id = module.network.network_interface_id
  vm_size              = var.vm_size
  admin_username       = var.admin_username
  ssh_public_key       = var.ssh_public_key
}

module "storage" {
  source = "../../modules/storage"

  project_name         = var.project_name
  environment          = var.environment
  location             = var.location
  resource_group_name  = azurerm_resource_group.main.name
  storage_account_name = var.storage_account_name
}