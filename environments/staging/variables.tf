variable "env" {
  description = "Target environment"
  type        = string
  default     = "staging"
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
  default     = "t3.small"
}

variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
  default     = 2
}

variable "public_key_path" {
  description = "Path to SSH public key file"
  type        = string
  default     = "../../Terra_Key.pub"
}
