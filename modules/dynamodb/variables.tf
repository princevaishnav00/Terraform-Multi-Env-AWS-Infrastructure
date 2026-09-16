variable "env" {
  description = "Target environment"
  type        = string
}

variable "table_name" {
  description = "DynamoDB table name"
  type        = string
  default     = ""
}

variable "hash_key" {
  description = "Attribute to use as the hash (partition) key"
  type        = string
  default     = "LockID"
}
