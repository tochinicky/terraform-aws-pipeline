provider "aws" {
  region = local.region
}

terraform {
  backend "s3" {
    bucket = "tochi-cicd-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
