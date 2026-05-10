# Deployment of a web app through Azure, using Infrastructure as Code - Terraform

This project demonstrates how to deploy a static web application to Microsoft Azure using Infrastructure as Code.

Terraform is used to provision cloud infrastructure for two separate environments: **staging** and **production**. The deployed application is a static HTML/CSS website served by Nginx on an Azure Linux Virtual Machine.

## Topics Covered

- Infrastructure as Code using Terraform
- Azure cloud infrastructure provisioning
- Virtual network creation
- Compute resource creation
- Storage resource creation
- Static web application deployment
- Reproducible staging and production environments

## Technologies Used

- Microsoft Azure
- Terraform
- Azure Virtual Network
- Azure Linux Virtual Machine
- Azure Storage Account
- Azure Blob Storage
- Nginx
- HTML
- CSS
- Git
- GitHub

## Architecture

For each environment, Terraform provisions the following resources:

```text
Resource Group
├── Virtual Network
│   └── Subnet
│       └── Network Security Group
│
├── Public IP Address
├── Network Interface
├── Linux Virtual Machine
│   └── Nginx Web Server
│       └── Static HTML/CSS Web App
│
└── Storage Account
    └── Blob Container
```

The same Terraform modules are reused for both environments.

## Environments

| Component             | Staging                    | Production                    |
| --------------------- | -------------------------- | ----------------------------- |
| Resource Group        | `rg-devops-webapp-staging` | `rg-devops-webapp-production` |
| VNet address space    | `10.0.0.0/16`              | `10.1.0.0/16`                 |
| Subnet address prefix | `10.0.1.0/24`              | `10.1.1.0/24`                 |
| VM size               | `Standard_D2s_v3`          | `Standard_D2s_v3`             |
| Web server            | Nginx                      | Nginx                         |
| Storage container     | `webapp-assets`            | `webapp-assets`               |

## Repository Structure

```text
DevOps_Project_Azure_Terraform_Web_App/
│
├── app/
│   ├── index.html
│   ├── style.css
│   └── script.js
│
├── terraform/
│   ├── modules/
│   │   ├── network/
│   │   ├── compute/
│   │   └── storage/
│   │
│   └── environments/
│       ├── staging/
│       └── production/
│
├── README.md
└── .gitignore
```

## Terraform Modules

**Network Module**
Creates:
- Azure Virtual Network
- Subnet
- Network Security Group
- HTTP rule for port 80
- SSH rule for port 22
- Public IP Address
- Network Interface

**Compute Module**
Creates:
- Azure Linux Virtual Machine
- SSH-based authentication
- Ubuntu server image
- Nginx installation using cloud-init
- Static website deployment using cloud-init

**Storage Module**
Creates:
- Azure Storage Account
- Private Blob Container

## Prerequisites

- Git
- Terraform
- Azure CLI
- Microsoft Azure Subscription

## Variable Files

Real terraform.tfvars files are not committed because they may contain sensitive values.

## Deploy Staging

```text
cd terraform\environments\staging

terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
```

## Deploy Production
```text
cd terraform\environments\production

terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
```

The static web application can be opened, for either environment, using:
```text
http://<public-ip-address>
```
