terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.7"
    }
  }

  backend "s3" {
    key    = "infra/dataminer.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.default_region
}

provider "archive" {}
