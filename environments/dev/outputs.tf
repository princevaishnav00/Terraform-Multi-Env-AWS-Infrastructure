output "dev_vpc_id" {
  description = "Dev VPC ID"
  value       = module.vpc.vpc_id
}

output "dev_ec2_public_ips" {
  description = "Public IPs of Dev EC2 instances"
  value       = module.ec2.public_ips
}

output "dev_s3_bucket" {
  description = "Dev S3 bucket name"
  value       = module.s3.bucket_id
}

output "dev_dynamodb_table" {
  description = "Dev DynamoDB table name"
  value       = module.dynamodb.table_name
}
