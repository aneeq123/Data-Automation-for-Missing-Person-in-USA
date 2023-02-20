# Data Automation for Missing Person in USA

# Project Description


The goal of this project is to automate the data loading process from a CSV file to a Postgres database for missing person data in Florida state, using Bash Scripting. The data is obtained from the National Missing and Unidentified Persons System (NAMUS.gov) and is provided in the form of a CSV file. The project provides a set of Bash scripts that automates the extraction, transformation, and loading of the data into a Postgres database, making it easy to query and analyze the data.

# Dataset


The dataset is obtained from NAMUS.gov and contains information on missing persons in Florida state. To download the dataset, you need to create a user account on NAMUS.gov. However, for this project, the dataset is provided in a CSV file format, which can be downloaded from Github. The CSV file contains information on the missing person, such as their name, age, gender, race, height, weight, date of disappearance, and the location where they were last seen.

# Tools and Technologies


The project uses Bash scripting, Postgres DB, and Docker container to automate the data loading process. The Bash script is used to extract, transform, and load the data into the Postgres database. Docker container is used to set up the environment required to run the Postgres database. The project also provides a setup script that sets up the Postgres database and creates the required table.

# Files


- app.env: This file contains the environment variables required for running the Docker container.
- data.csv: This file contains the original data that needs to be loaded into the Postgres database.
- docker-compose.yml: This is the YAML source file that contains the configuration for the Docker container.
- etl.sh: This is the main Bash script that transforms the data from data.csv to make it easier to load into the Postgres database.
- headers.sh: This file contains the column headers for the data.csv file.
- list.csv: This file contains a list of all the files in the Original data folder.
- list.txt: This file contains a list of all the files in the Screenshot folder.
- perms.sh: This script sets the file permissions for the Bash scripts.
- setup_db.sh: This script sets up the Postgres database and creates the required table.
- update.sh: This script updates the database with any new data that has been added to the data.csv file.
- Original data folder: This folder contains the original data.csv file that was not modified prior to the project.








# Usage
To use the project, follow these steps:

- Clone the project repository from Github.
- Download the data.csv file and place it in the project directory.
- Install Postgres and Install Docker (and Docker Compose) if you haven't already done so.
- Run the setup_db.sh script to set up the Postgres database and create the required table.
- Run the etl.sh script to transform and load the data into the Postgres database.
- Use any SQL client to query the database and analyze the data.

# Conclusion

The Bash scripting project provides a simple and efficient way to automate the data loading process from a CSV file to a Postgres database for missing person data in Florida state. It simplifies the data extraction, transformation, and loading process, making it easy to query and analyze the data. With the provided Bash scripts, setting up and running the project is straightforward and requires minimal effort.
