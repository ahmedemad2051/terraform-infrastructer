# Create a VPC
resource "aws_vpc" "custom-vpc" {
  cidr_block = "${var.vpc_cidr}"
    tags = {
    Name = "${var.vpc_tag}"
  }
}