variable "aws_region" {
  description = "AWS region for all resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "university-survey"
}

variable "environment" {
  description = "Environment (dev/staging/prod)"
  type        = string
  default     = "dev"
}

variable "db_username" {
  description = "Username for RDS instance"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Password for RDS instance"
  type        = string
  sensitive   = true
}

variable "bucket_prefix" {
  description = "Prefix for S3 buckets"
  type        = string
  default     = "university-survey"
}

variable "tags" {
  description = "Tags to be applied to all resources"
  type        = map(string)
  default     = {
    Project     = "University Survey Analysis"
    ManagedBy   = "Terraform"
  }
}