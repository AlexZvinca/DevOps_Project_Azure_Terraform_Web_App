variable "subscription_id" {
  description = "Azure subscription ID used by Terraform"
  type        = string
  sensitive   = true
}

variable "project_name" {
  description = "Name of the project used in Azure resource names"
  type        = string
}

variable "environment" {
  description = "Deployment environment name"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the staging virtual network"
  type        = string
}

variable "subnet_address_prefix" {
  description = "Address prefix for the staging subnet"
  type        = string
}

variable "ssh_source_address_prefix" {
  description = "IP address range allowed to SSH into the VM"
  type        = string
}