provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

terraform {
  backend "s3" {
    region = "us-east-1"
  }
}