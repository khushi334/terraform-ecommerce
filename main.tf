# 1. Fetch the default VPC
data "aws_vpc" "default" {
  default = true
}

# 2. Fetch available AZs in the target region
data "aws_availability_zones" "available" {
  state = "available"
}

# 3. Dynamically fetch the latest Amazon Linux 2023 AMI
data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = [var.ami_name]
  }

  owners = ["amazon"]
}

# Compute Resource Block
resource "aws_instance" "web" {
  count = var.instance_count

  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type

  tags = {
    Name        = "${var.project_name}-${var.environment}-web-${count.index + 1}"
    Environment = var.environment
    Project     = var.project_name
    Workspace   = terraform.workspace
  }
}