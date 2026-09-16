resource "random_string" "bucket_suffix" {
  length  = 6
  special = false
  upper   = false
}

resource "aws_s3_bucket" "this" {
  bucket        = var.bucket_name != "" ? var.bucket_name : "${var.env}-infra-project-bucket-${random_string.bucket_suffix.result}"
  force_destroy = true

  tags = {
    Name        = var.bucket_name != "" ? var.bucket_name : "${var.env}-infra-project-bucket-${random_string.bucket_suffix.result}"
    Environment = var.env
  }
}
