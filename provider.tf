provider "aws" {
  region = local.region
}

terraform {
  backend "s3" {
    bucket = "cicd-bucket-class"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}
