#!/bin/bash

# Variables
ENVIRONMENT="dev"
REGION="us-east-1"
PROJECT="university-survey"

echo "Starting deployment for $PROJECT in $ENVIRONMENT environment..."

# Validar credenciales de AWS
if ! aws sts get-caller-identity > /dev/null 2>&1; then
    echo "Error: AWS credentials not configured"
    exit 1
fi

# Desplegar infraestructura con Terraform
cd ../terraform
echo "Initializing Terraform..."
terraform init

echo "Applying Terraform configuration..."
terraform apply -auto-approve

# Empaquetar y desplegar función Lambda
cd ../../src/lambda
echo "Packaging Lambda function..."
./package_lambda.sh

echo "Updating Lambda function..."
aws lambda update-function-code \
    --function-name "$PROJECT-process-survey-$ENVIRONMENT" \
    --zip-file fileb://process_survey.zip \
    --region $REGION

# Subir script de Glue
cd ../glue
echo "Uploading Glue job script..."
aws s3 cp etl_job.py "s3://$PROJECT-$ENVIRONMENT-glue-scripts/etl_job.py"

# Iniciar el job de Glue
echo "Starting Glue job..."
aws glue start-job-run --job-name "$PROJECT-etl-$ENVIRONMENT"

echo "Deployment completed successfully!"