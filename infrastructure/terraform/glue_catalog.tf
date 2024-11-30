# Crear base de datos en el catálogo de Glue
resource "aws_glue_catalog_database" "survey_db" {
  name = "survey_db"
}

# Crear tabla para encuestas en el catálogo
resource "aws_glue_catalog_table" "surveys" {
  name          = "surveys"
  database_name = aws_glue_catalog_database.survey_db.name

  table_type = "EXTERNAL_TABLE"

  parameters = {
    "classification" = "postgresql"
  }

  storage_descriptor {
    location      = "jdbc:postgresql://${aws_db_instance.survey_db.endpoint}/${aws_db_instance.survey_db.db_name}"
    input_format  = "org.apache.hadoop.mapred.TextInputFormat"
    output_format = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"

    columns {
      name = "id"
      type = "int"
    }
    columns {
      name = "student_id"
      type = "string"
    }
    columns {
      name = "course_id"
      type = "string"
    }
    columns {
      name = "satisfaction_score"
      type = "int"
    }
    columns {
      name = "feedback_text"
      type = "string"
    }
    columns {
      name = "timestamp"
      type = "timestamp"
    }
  }
}