variable "env" {
  description = "Target environment"
  type        = string
  default     = "prod"
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t3.medium"
}

variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
  default     = 3
}

variable "public_key_path" {
  description = "Path to SSH public key file"
  type        = string
  default     = "../../Terra_Key.pub"
}

variable "db_password" {
  description = "Master password for Production RDS database"
  type        = string
  default     = "ProdSecurePass123!"
  sensitive   = true
}
