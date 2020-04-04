module "pub_instance_1" {
  source = "./instance"
  name = "pub_instance_1"
  ami = "ami-09a7fe78668f1e2c0"
  key= "${aws_key_pair.deployer.key_name}"
  subnet= "${aws_subnet.pub-sub-1.id}"
  associate_public_ip = true
  security_groups = ["${aws_security_group.allow_http.id}"]
}

module "pub_instance_2" {
  source = "./instance"
  name = "pub_instance_2"
  ami = "ami-09a7fe78668f1e2c0"
  key= "${aws_key_pair.deployer.key_name}"
  subnet= "${aws_subnet.pub-sub-2.id}"
  associate_public_ip = true
  security_groups = ["${aws_security_group.allow_http.id}"]
}

module "pub_instance_3" {
  source = "./instance"
  name = "pastion"
  ami = "ami-09a7fe78668f1e2c0"
  key= "${aws_key_pair.deployer.key_name}"
  subnet= "${aws_subnet.pub-sub-2.id}"
  associate_public_ip = true
  security_groups = ["${aws_security_group.allow_ssh.id}"]
}