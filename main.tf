terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  backend "s3" {
    bucket = "demo-terraform-state-bkt"
    key    = "demo-terraform.tfstate"
    region = "ap-south-1"
  }
  required_version = ">= 1.2.0"
}


provider "aws" {
  region = "ap-south-1"
}

