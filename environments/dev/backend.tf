terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }

  # Remote S3 backend configuration
  # Uncomment and replace 'bucket' with your real AWS S3 bucket name when ready for remote state.
  #
  # backend "s3" {
  #   bucket       = "my-company-tfstate-bucket"
  #   key          = "dev/terraform.tfstate"
  #   region       = "ap-south-1"
  #   use_lockfile = true
  # }
}

provider "aws" {
  region = var.aws_region
}
