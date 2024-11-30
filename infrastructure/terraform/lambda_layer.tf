resource "aws_lambda_layer_version" "survey_dependencies" {
  filename   = "lambda_layer.zip"
  layer_name = "survey_dependencies"

  compatible_runtimes = ["python3.9"]

  description = "Dependencies for survey processing Lambda function"
}

# Modificar la función Lambda para usar la capa
resource "aws_lambda_function" "process_survey" {
  # ... otras configuraciones ...
  layers = [aws_lambda_layer_version.survey_dependencies.arn]
}