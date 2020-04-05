provider "aws" {
  region = "${var.provider_region}"  
  shared_credentials_file = "/home/onepiece/.aws/credentials"
  profile = "${var.provider_profile}"
}
