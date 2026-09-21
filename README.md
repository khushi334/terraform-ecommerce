# terraform-ecommerce
# Terraform-Based Multi-Environment Deployment for an E-Commerce Web Application

## Project Overview

This project demonstrates how Terraform can be used to deploy and manage
separate Development and Production environments on AWS using Infrastructure as Code.

The project uses Terraform workspaces, variables, tfvars files, data sources,
and EC2 resources to create environment-specific infrastructure.

## Architecture

The project contains two environments:

### Development
- Terraform workspace: `dev`
- 1 EC2 instance
- Instance type: `t3.micro`
- Configuration: `terraform.tfvars.dev`

### Production
- Terraform workspace: `prod`
- 3 EC2 instances
- Instance type: `t3.small`
- Configuration: `terraform.tfvars.prod`

## Technologies Used

- Terraform
- Amazon Web Services (AWS)
- Amazon EC2
- AWS CLI
- Infrastructure as Code
- PowerShell

## Terraform Concepts Used

### Workspaces

Two Terraform workspaces are used:

- `dev`
- `prod`

They maintain separate Terraform states for the environments.

### Variables

The project uses variables for:

- AWS region
- Environment
- Instance type
- Instance count
- Project name
- AMI name

### Data Sources

Terraform data sources dynamically retrieve AWS information such as:

- Default VPC
- Availability Zones
- Amazon Linux AMI

This avoids hardcoding AWS resource IDs.

### Resources

The project creates EC2 instances based on the environment configuration.

## Project Structure

```text
terraform-ecommerce/
│
├── main.tf
├── variables.tf
├── terraform.tf
├── terraform.tfvars.dev
├── terraform.tfvars.prod
├── .gitignore
├── README.md
└── architecture-diagram.png
