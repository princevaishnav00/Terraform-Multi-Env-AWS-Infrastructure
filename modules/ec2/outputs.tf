output "instance_ids" {
  description = "IDs of launched EC2 instances"
  value       = aws_instance.this[*].id
}

output "public_ips" {
  description = "Public IP addresses of EC2 instances"
  value       = aws_instance.this[*].public_ip
}
