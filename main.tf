terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

module "ecr" {
  source = "../.."

  ecr_name       = var.ecr_name
  aws_region     = var.aws_region
  aws_profile    = var.aws_profile
  mutability     = "MUTABLE"
  encryption_type = "AES256"
  enable_scan    = "true"

  create_ecr_lifecycle_policy = true
  delete_images_after_n_days  = 7

  tags = var.tags
}
