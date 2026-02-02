variable "ecr_name" {
  description = "Name of the ECR repository"
  type        = string
  default     = "my-app-basic"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS profile"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Terraform   = "true"
    Example     = "basic"
  }
}
