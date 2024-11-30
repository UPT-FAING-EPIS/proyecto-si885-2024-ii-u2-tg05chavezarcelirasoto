# Proveedor AWS
provider "aws" {
  region = var.aws_region
}

# S3 Bucket para datos de encuestas
resource "aws_s3_bucket" "survey_data" {
  bucket = "${var.project_name}-survey-data-${var.environment}"

  tags = {
    Environment = var.environment
    Project     = var.project_name
  }
}

# Bucket versioning
resource "aws_s3_bucket_versioning" "survey_data_versioning" {
  bucket = aws_s3_bucket.survey_data.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Base de datos RDS
resource "aws_db_instance" "survey_db" {
  identifier        = "${var.project_name}-db-${var.environment}"
  engine            = "postgresql"
  engine_version    = "13.7"
  instance_class    = "db.t3.micro"
  allocated_storage = 20
  
  db_name  = "survey_db"
  username = var.db_username
  password = var.db_password

  skip_final_snapshot = true

  tags = {
    Environment = var.environment
    Project     = var.project_name
  }
}

# IAM Role para Lambda
resource "aws_iam_role" "lambda_role" {
  name = "${var.project_name}-lambda-role-${var.environment}"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}