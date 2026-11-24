# Creating a VPC for this
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "terraform-course"
    Environment = "Lab"
    Managed_By  = "Terraform"
  }
}

# Second VPC, just for the hell of it
resource "aws_vpc" "secondary" {
  cidr_block           = "192.168.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "terraform-course-secondary"
    Environment = "Lab"
    Managed_By  = "Terraform"
  }
}