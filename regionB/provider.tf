# Configure the provider software version
terraform {
  backend "s3" {
  bucket = "arwa-bucket"
  key    = "state_file_regionB"
  region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}