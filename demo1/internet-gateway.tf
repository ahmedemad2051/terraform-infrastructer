resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.custom-vpc.id}"

  tags = {
    Name = "custom-vpc-gw"
  }
}