CREATE DATABASE IF NOT EXISTS rs_sampledb_staging;
CREATE DATABASE IF NOT EXISTS rs_sampledb_development;

GRANT ALL PRIVILEGES ON *.* TO 'sample'@'%';