resource "aws_subnet" "pub-sub-1" {
  vpc_id     = "${aws_vpc.custom-vpc.id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-west-1a"

  tags = {
    Name = "pub-sub-1"
  }
}

resource "aws_subnet" "pub-sub-2" {
  vpc_id     = "${aws_vpc.custom-vpc.id}"
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-west-1b"

  tags = {
    Name = "pub-sub-2"
  }
}

resource "aws_subnet" "pv-sub-1" {
  vpc_id     = "${aws_vpc.custom-vpc.id}"
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-west-1a"
  tags = {
    Name = "pv-sub-1"
  }
}

resource "aws_subnet" "pv-sub-2" {
  vpc_id     = "${aws_vpc.custom-vpc.id}"
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-west-1b"

  tags = {
    Name = "pv-sub-2"
  }
}