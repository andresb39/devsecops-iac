provider "aws" {
  region = "us-east-2"
}
terraform {
  required_version = "1.5.0"
  required_providers {
    aws = {
      version = ">= 5.0.0"
      source  = "hashicorp/aws"
    }
  }
}
