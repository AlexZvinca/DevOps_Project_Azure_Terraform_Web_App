variable "project_name" {
  description = "Name of the project used in Azure resource names"
  type        = string
}

variable "environment" {
  description = "Deployment environment name, for example staging or production"
  type        = string
}

variable "location" {
  description = "Azure region where storage resources will be created"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "storage_account_name" {
  description = "Globally unique Azure Storage Account name"
  type        = string
}