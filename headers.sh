#!/bin/bash 

# transform the character into lower case in the first row

head -n 1 data.csv | tr '[:upper:]' '[:lower:]' > list.csv

# remove spaces and replace with underscore and remove backslash
sed -zi 's/ /_/g; s/_\///g' list.csv

#Display the content of the first row
list=$(cat list.csv)
echo $list

# Update the first row in the data.csv file
sed -i "1s/.*/$list/" data.csv