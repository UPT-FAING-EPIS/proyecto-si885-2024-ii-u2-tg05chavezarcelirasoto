# Configuración del trabajo de Glue
resource "aws_glue_job" "survey_etl" {
  name     = "${var.project_name}-survey-etl-${var.environment}"
  role_arn = aws_iam_role.glue_role.arn
  
  command {
    name            = "glueetl"
    script_location = "s3://${aws_s3_bucket.glue_scripts.id}/etl_job.py"
    python_version  = "3"
  }

  default_arguments = {
    "--job-language"                     = "python"
    "--continuous-log-logGroup"          = "/aws-glue/jobs"
    "--enable-continuous-cloudwatch-log" = "true"
    "--enable-metrics"                   = "true"
    "--TempDir"                          = "s3://${aws_s3_bucket.glue_scripts.id}/temporary/"
    "--enable-spark-ui"                  = "true"
    "--spark-event-logs-path"            = "s3://${aws_s3_bucket.glue_scripts.id}/sparkHistoryLogs/"
    "--enable-job-insights"              = "true"
    "--job-bookmark-option"              = "job-bookmark-enable"
    "--environment"                      = var.environment
  }

  execution_property {
    max_concurrent_runs = 1
  }

  glue_version = "3.0"
  
  worker_type  = "G.1X"
  number_of_workers = 2
  timeout      = 2880

  tags = {
    Environment = var.environment
    Project     = var.project_name
  }
}