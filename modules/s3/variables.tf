variable "env" {
  description = "Target environment"
  type        = string
}

variable "bucket_name" {
  description = "Optional custom bucket name. If empty, a default environment name is used."
  type        = string
  default     = ""
}
