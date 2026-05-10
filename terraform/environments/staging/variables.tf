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