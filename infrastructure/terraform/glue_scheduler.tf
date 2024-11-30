# Crear regla de EventBridge para ejecutar el job diariamente
resource "aws_cloudwatch_event_rule" "daily_etl" {
  name                = "daily-survey-etl"
  description         = "Trigger survey ETL job daily"
  schedule_expression = "cron(0 1 * * ? *)"  # Ejecutar a la 1 AM UTC
}

# Target para la regla de EventBridge
resource "aws_cloudwatch_event_target" "glue_job" {
  rule      = aws_cloudwatch_event_rule.daily_etl.name
  target_id = "TriggerGlueJob"
  arn       = aws_glue_job.survey_etl.arn
  role_arn  = aws_iam_role.eventbridge_role.arn
}

# Rol IAM para EventBridge
resource "aws_iam_role" "eventbridge_role" {
  name = "eventbridge-glue-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "events.amazonaws.com"
        }
      }
    ]
  })
}

# Política para permitir que EventBridge inicie el job de Glue
resource "aws_iam_role_policy" "eventbridge_policy" {
  name = "start-glue-job"
  role = aws_iam_role.eventbridge_role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = "glue:StartJobRun"
        Resource = aws_glue_job.survey_etl.arn
      }
    ]
  })
}