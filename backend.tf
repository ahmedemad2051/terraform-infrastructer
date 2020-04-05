terraform {
  backend "s3" {
    bucket = "terraform-demo01"
    key    = "state/dev/terraform.tfstate"
    region = "us-west-1"
    shared_credentials_file = "/home/onepiece/.aws/credentials"
    profile = "default"
  }
}