import json
import pandas as pd
import boto3
import psycopg2
from io import StringIO
import os

def validate_survey_data(df):
    """Validates the survey data format and content"""
    required_columns = ['student_id', 'course_id', 'satisfaction_score', 'feedback_text', 'timestamp']
    
    # Check if all required columns are present
    if not all(col in df.columns for col in required_columns):
        missing_cols = [col for col in required_columns if col not in df.columns]
        raise ValueError(f"Missing required columns: {missing_cols}")
    
    # Validate data types
    if not df['satisfaction_score'].between(1, 5).all():
        raise ValueError("Satisfaction score must be between 1 and 5")
    
    # Remove any duplicate entries
    df = df.drop_duplicates()
    
    return df

def process_survey_file(event, context):
    """Process survey file uploaded to S3"""
    s3 = boto3.client('s3')
    
    # Get bucket and file information from the event
    bucket = event['Records'][0]['s3']['bucket']['name']
    key = event['Records'][0]['s3']['object']['key']
    
    try:
        # Read the Excel file from S3
        response = s3.get_object(Bucket=bucket, Key=key)
        df = pd.read_excel(response['Body'].read())
        
        # Validate and clean the data
        df = validate_survey_data(df)
        
        # Connect to RDS
        conn = psycopg2.connect(
            host=os.environ['DB_HOST'],
            database=os.environ['DB_NAME'],
            user=os.environ['DB_USERNAME'],
            password=os.environ['DB_PASSWORD']
        )
        
        # Save to RDS
        with conn.cursor() as cur:
            # Create temporary table
            cur.execute("""
                CREATE TEMP TABLE temp_surveys (
                    student_id VARCHAR(50),
                    course_id VARCHAR(50),
                    satisfaction_score INTEGER,
                    feedback_text TEXT,
                    timestamp TIMESTAMP
                )
            """)
            
            # Copy data to temp table
            output = StringIO()
            df.to_csv(output, sep='\t', header=False, index=False)
            output.seek(0)
            cur.copy_from(output, 'temp_surveys', null='')
            
            # Insert into final table
            cur.execute("""
                INSERT INTO surveys (student_id, course_id, satisfaction_score, feedback_text, timestamp)
                SELECT * FROM temp_surveys
                ON CONFLICT (student_id, course_id, timestamp)
                DO UPDATE SET
                    satisfaction_score = EXCLUDED.satisfaction_score,
                    feedback_text = EXCLUDED.feedback_text
            """)
            
            conn.commit()
        
        return {
            'statusCode': 200,
            'body': json.dumps(f'Successfully processed file {key} with {len(df)} records')
        }
        
    except Exception as e:
        return {
            'statusCode': 500,
            'body': json.dumps(f'Error processing file {key}: {str(e)}')
        }
    
    finally:
        if 'conn' in locals():
            conn.close()

def lambda_handler(event, context):
    """Main Lambda handler"""
    return process_survey_file(event, context)