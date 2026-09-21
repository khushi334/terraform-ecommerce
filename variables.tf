variable "aws_region" {
  type        = string
  description = "AWS region for resources"
  default     = "us-east-1"
}

variable "environment" {
  type        = string
  description = "Target deployment environment (dev or prod)"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "instance_count" {
  type        = number
  description = "Number of EC2 instances to provision"
}

variable "project_name" {
  type        = string
  description = "Base name for tagging and resource naming"
}

variable "ami_name" {
  type        = string
  description = "Name pattern for dynamic AMI lookup"
}