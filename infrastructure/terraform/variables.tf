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

variable "glue_job_name" {
  description = "Name of the Glue ETL job"
  type        = string
  default     = "survey-etl-job"
}

variable "glue_job_timeout" {
  description = "Timeout for the Glue job in minutes"
  type        = number
  default     = 2880
}

variable "glue_worker_type" {
  description = "Type of worker to use for Glue job"
  type        = string
  default     = "G.1X"
}

variable "glue_number_of_workers" {
  description = "Number of workers to use for Glue job"
  type        = number
  default     = 2
}