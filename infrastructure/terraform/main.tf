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

# Lambda Function
resource "aws_lambda_function" "process_survey" {
  filename         = "../src/lambda/process_survey.zip"
  function_name    = "${var.project_name}-process-survey-${var.environment}"
  role            = aws_iam_role.lambda_role.arn
  handler         = "process_survey.lambda_handler"
  runtime         = "python3.9"

  environment {
    variables = {
      DB_HOST     = aws_db_instance.survey_db.endpoint
      DB_NAME     = aws_db_instance.survey_db.db_name
      ENVIRONMENT = var.environment
    }
  }

  tags = {
    Environment = var.environment
    Project     = var.project_name
  }
}

# AWS Glue Job
resource "aws_glue_job" "survey_etl" {
  name     = "${var.project_name}-etl-${var.environment}"
  role_arn = aws_iam_role.glue_role.arn

  command {
    script_location = "s3://${aws_s3_bucket.survey_data.id}/scripts/etl_job.py"
  }

  default_arguments = {
    "--job-language" = "python"
    "--continuous-log-logGroup"          = "/aws-glue/jobs"
    "--enable-continuous-cloudwatch-log" = "true"
  }

  tags = {
    Environment = var.environment
    Project     = var.project_name
  }
}