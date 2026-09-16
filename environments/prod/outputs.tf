output "prod_vpc_id" {
  description = "Prod VPC ID"
  value       = module.vpc.vpc_id
}

output "prod_ec2_public_ips" {
  description = "Public IPs of Prod EC2 instances"
  value       = module.ec2.public_ips
}

output "prod_s3_bucket" {
  description = "Prod S3 bucket name"
  value       = module.s3.bucket_id
}

output "prod_dynamodb_table" {
  description = "Prod DynamoDB table name"
  value       = module.dynamodb.table_name
}

output "prod_rds_endpoint" {
  description = "Prod RDS PostgreSQL endpoint"
  value       = module.rds.db_instance_endpoint
}
