module "pv_instance_1" {
  source = "./instance"
  name = "pv_instance_1"
  ami = "ami-09a7fe78668f1e2c0"
  key= "${aws_key_pair.deployer.key_name}"
  subnet= "${aws_subnet.pv-sub-1.id}"
  associate_public_ip = false
}

module "pv_instance_2" {
  source = "./instance"
  name = "pv_instance_2"
  ami = "ami-09a7fe78668f1e2c0"
  key= "${aws_key_pair.deployer.key_name}"
  subnet= "${aws_subnet.pv-sub-2.id}"
  associate_public_ip = false
}