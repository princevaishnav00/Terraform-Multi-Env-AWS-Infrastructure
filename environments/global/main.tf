# Global Shared Resources (IAM, S3 backend buckets, Route53 zones, etc.)

resource "aws_iam_role" "global_read_only" {
  name = "global-read-only-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })

  tags = {
    Environment = "global"
    ManagedBy   = "terraform"
  }
}
