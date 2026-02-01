terraform {
  required_providers {
    source = "hashicorp/aws"
    version = "~> 6.0"
  }
}

provider "aws" {
  region = var.default_region
}
