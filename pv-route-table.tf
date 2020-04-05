resource "aws_route_table" "rtb-pv" {
  vpc_id = "${aws_vpc.custom-vpc.id}"


  tags = {
    Name = "rtb-pv"
  }
}


resource "aws_route_table_association" "rtb-pv-sub-1" {
  subnet_id      = "${aws_subnet.pv-sub-1.id}"
  route_table_id = "${aws_route_table.rtb-pv.id}"
}

resource "aws_route_table_association" "rtb-pv-sub-2" {
  subnet_id      = "${aws_subnet.pv-sub-2.id}"
  route_table_id = "${aws_route_table.rtb-pv.id}"
}
