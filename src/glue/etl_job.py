import sys
from awsglue.transforms import *
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from awsglue.context import GlueContext
from awsglue.job import Job
from pyspark.sql.functions import *

## @params: [JOB_NAME]
args = getResolvedOptions(sys.argv, ['JOB_NAME'])

sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
job = Job(glueContext)
job.init(args['JOB_NAME'], args)

# Read from PostgreSQL
survey_data = glueContext.create_dynamic_frame.from_catalog(
    database="survey_db",
    table_name="surveys"
)

# Convert to DataFrame for easier manipulation
survey_df = survey_data.toDF()

# Aggregate metrics
course_metrics = survey_df.groupBy("course_id").agg(
    avg("satisfaction_score").alias("avg_satisfaction"),
    count("*").alias("total_responses"),
    countDistinct("student_id").alias("unique_students")
)

# Time-based analysis
time_metrics = survey_df.groupBy(
    window("timestamp", "1 week").alias("week")
).agg(
    avg("satisfaction_score").alias("weekly_avg_satisfaction"),
    count("*").alias("weekly_responses")
)

# Write results back to PostgreSQL
glueContext.write_dynamic_frame.from_catalog(
    frame=DynamicFrame.fromDF(course_metrics, glueContext, "course_metrics"),
    database="survey_db",
    table_name="course_metrics"
)

glueContext.write_dynamic_frame.from_catalog(
    frame=DynamicFrame.fromDF(time_metrics, glueContext, "time_metrics"),
    database="survey_db",
    table_name="time_metrics"
)

job.commit()