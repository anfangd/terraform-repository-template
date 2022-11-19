provider "aws" {
  region = "ap-northeast-1"

  default_tags {
    tags = {
      Environment = "production"
      Managed_by  = "Terrform"
      Team        = "infra"
      Scope       = "Foundation"
      Product     = "platform_4_cr"
    }
  }
}
