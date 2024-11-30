import boto3
import time
from datetime import datetime

def monitor_job_run(job_name, run_id):
    glue_client = boto3.client('glue')
    
    while True:
        response = glue_client.get_job_run(JobName=job_name, RunId=run_id)
        status = response['JobRun']['JobRunState']
        
        print(f"Job Status: {status} at {datetime.now()}")
        
        if status in ['SUCCEEDED', 'FAILED', 'TIMEOUT', 'STOPPED']:
            break
            
        time.sleep(30)  # Check every 30 seconds
        
    return status

def main():
    job_name = "survey-etl-job"
    glue_client = boto3.client('glue')
    
    try:
        # Iniciar el job
        response = glue_client.start_job_run(JobName=job_name)
        run_id = response['JobRunId']
        
        print(f"Started Glue job {job_name} with run ID: {run_id}")
        
        # Monitorear la ejecución
        final_status = monitor_job_run(job_name, run_id)
        print(f"Job finished with status: {final_status}")
        
    except Exception as e:
        print(f"Error: {str(e)}")

if __name__ == "__main__":
    main()