terraform {

  required_version = ">=1.3"

  backend "s3" {
    encrypt = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.75.2"
    }
  }
}
