#!/bin/bash 

# Source environment variables from app.env
source app.env

# Use the "psql" command to execute SQL statements
psql -h $PGHOST -U $PGUSER -d $PGDATABASE <<EOF
CREATE TABLE IF NOT EXISTS persons (
    id SERIAL,
    case_number VARCHAR(50) UNIQUE,
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
