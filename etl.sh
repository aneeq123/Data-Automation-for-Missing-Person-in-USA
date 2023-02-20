#!/bin/bash
export $(cat app.env)

#update the headers
./headers.sh

# Set up file permissions
./perms.sh

# Set up the database
./setup_db.sh

# Update the database with data from a CSV file
./update.sh