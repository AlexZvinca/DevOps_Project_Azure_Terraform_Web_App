variable "project_name" {
  description = "Name of the project used in Azure resource names"
  type        = string
}

variable "environment" {
  description = "Deployment environment name, for example staging or production"
  type        = string
}

variable "location" {
  description = "Azure region where compute resources will be created"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "network_interface_id" {
  description = "ID of the network interface attached to the VM"
  type        = string
}

variable "vm_size" {
  description = "Azure VM size"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the Linux VM"
  type        = string
}

variable "ssh_public_key" {
  description = "Public SSH key used to connect to the Linux VM"
  type        = string
  sensitive   = true
}