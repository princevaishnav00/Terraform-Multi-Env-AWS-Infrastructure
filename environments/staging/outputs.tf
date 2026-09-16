output "staging_vpc_id" {
  description = "Staging VPC ID"
  value       = module.vpc.vpc_id
}

output "staging_ec2_public_ips" {
  description = "Public IPs of Staging EC2 instances"
  value       = module.ec2.public_ips
}

output "staging_s3_bucket" {
  description = "Staging S3 bucket name"
  value       = module.s3.bucket_id
}

output "staging_dynamodb_table" {
  description = "Staging DynamoDB table name"
  value       = module.dynamodb.table_name
}
