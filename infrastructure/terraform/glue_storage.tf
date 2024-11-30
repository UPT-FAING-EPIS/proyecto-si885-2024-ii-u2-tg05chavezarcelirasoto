# Bucket S3 para scripts de Glue
resource "aws_s3_bucket" "glue_scripts" {
  bucket = "${var.project_name}-glue-scripts-${var.environment}"

  tags = {
    Environment = var.environment
    Project     = var.project_name
  }
}

# Habilitar versionamiento para el bucket
resource "aws_s3_bucket_versioning" "glue_scripts_versioning" {
  bucket = aws_s3_bucket.glue_scripts.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Configuración de cifrado para el bucket
resource "aws_s3_bucket_server_side_encryption_configuration" "glue_scripts_encryption" {
  bucket = aws_s3_bucket.glue_scripts.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}