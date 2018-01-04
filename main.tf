provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "${var.bucket_name}"

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
    encrypt = "true"
  }
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config {
    bucket = "${var.bucket_name}"
    key    = "${var.state_file}"
    region = "us-east-1"
  }
}