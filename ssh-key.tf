resource "tls_private_key" "ssh_key" {
  algorithm   = "RSA"
  ecdsa_curve = "2048"


}


resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "${tls_private_key.ssh_key.public_key_openssh}"
}

resource "aws_secretsmanager_secret" "secret_ssh" {
  name = "${var.secret_manager}"
}

resource "aws_secretsmanager_secret_version" "secret_ssh_version" {
  secret_id     = "${aws_secretsmanager_secret.secret_ssh.id}"
  secret_string = "${tls_private_key.ssh_key.private_key_pem}"

      provisioner "local-exec" {
    command = "aws secretsmanager get-secret-value --secret-id ${var.secret_manager} --region ${var.provider_region} > private_key.pem"
    interpreter = ["bash", "-c"]
  }
}