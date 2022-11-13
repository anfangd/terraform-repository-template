terraform {
  backend "s3" {
    profile = "default"
    encrypt = "true"
  }

  required_version = ">=1.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}
