provider "aws" {
  region = "us-east-2"
}
terraform {
  required_version = ">= 1.0"
  required_providers {
    helm       = "= 2.5.0"
    kubernetes = "= 2.9.0"
    aws        = "= 4.8.0"
  }
}