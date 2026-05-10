variable "project_name" {
  description = "Name of the project used in Azure resource names"
  type        = string
}

variable "environment" {
  description = "Deployment environment name, for example staging or production"
  type        = string
}

variable "location" {
  description = "Azure region where network resources will be created"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the Azure Virtual Network"
  type        = string
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet"
  type        = string
}

variable "ssh_source_address_prefix" {
  description = "IP address range allowed to connect using SSH"
  type        = string
}