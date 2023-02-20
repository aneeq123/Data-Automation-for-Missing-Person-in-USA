#!/bin/bash

# Source environment variables from app.env
source app.env

# Use the "psql" command to execute SQL statements
psql -h $PGHOST -U $PGUSER -d $PGDATABASE <<EOF
DROP TABLE IF EXISTS temp_persons;
CREATE TABLE temp_persons(
    id SERIAL,
    case_number VARCHAR(50) unique,
    dlc DATE,
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    missing_age VARCHAR(50),
    city VARCHAR(50),
    county VARCHAR(50),
    state VARCHAR(50),
    sex VARCHAR(50),
    race_ethnicity VARCHAR(100),
    date_modified DATE
);
EOF

psql -h $PGHOST -U $PGUSER -d $PGDATABASE <<EOF 
\copy temp_persons(case_number,dlc,last_name,first_name,missing_age,city,county,state,sex,race_ethnicity,date_modified) FROM './data.csv' DELIMITER ',' CSV HEADER;
EOF

psql -h $PGHOST -U $PGUSER -d $PGDATABASE <<EOF
INSERT INTO persons(id,case_number,dlc,last_name,first_name,missing_age,city,county,state,sex,race_ethnicity,date_modified)
SELECT * FROM temp_persons
ON CONFLICT(case_number) DO
UPDATE
SET(id,case_number,dlc,last_name,first_name,missing_age,city,county,state,sex,race_ethnicity,date_modified) = (SELECT * FROM temp_persons WHERE temp_persons.case_number = persons.case_number);
DROP TABLE temp_persons;
EOF
