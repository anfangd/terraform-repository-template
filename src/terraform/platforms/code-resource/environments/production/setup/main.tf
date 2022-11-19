variable "product_name" {
  type        = string
  description = "The Name of product."
  default     = "default"
}

module "org_baseline" {
  source = "../../../../../modules/aws/org-baseline"
  #version = ""

  product_name = var.product_name
}

module "codebuild_terraform_ci" {
  source = "../../../../../modules/aws/release-terraform"
  #version = ""

}
