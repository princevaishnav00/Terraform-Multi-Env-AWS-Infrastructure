output "global_read_only_role_arn" {
  description = "ARN of global read only IAM role"
  value       = aws_iam_role.global_read_only.arn
}
