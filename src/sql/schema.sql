-- Tabla principal de encuestas
CREATE TABLE IF NOT EXISTS surveys (
    id SERIAL PRIMARY KEY,
    student_id VARCHAR(50),
    course_id VARCHAR(50),
    satisfaction_score INTEGER,
    feedback_text TEXT,
    timestamp TIMESTAMP,
    UNIQUE(student_id, course_id, timestamp)
);

-- Tabla para métricas por curso
CREATE TABLE IF NOT EXISTS course_metrics (
    id SERIAL PRIMARY KEY,
    course_id VARCHAR(50),
    avg_satisfaction DECIMAL(3,2),
    total_responses INTEGER,
    unique_students INTEGER,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla para métricas temporales
CREATE TABLE IF NOT EXISTS time_metrics (
    id SERIAL PRIMARY KEY,
    week_start TIMESTAMP,
    weekly_avg_satisfaction DECIMAL(3,2),
    weekly_responses INTEGER,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Índices para optimizar consultas
CREATE INDEX idx_surveys_course ON surveys(course_id);
CREATE INDEX idx_surveys_timestamp ON surveys(timestamp);
CREATE INDEX idx_course_metrics_course ON course_metrics(course_id);
CREATE INDEX idx_time_metrics_week ON time_metrics(week_start);