#!/bin/bash

# Use the awk command to extract the user IDs from the /etc/passwd file,
# filter out IDs less than 500 or greater than 10000, and count the number of lines
count=$(awk -F: '{if ($3 >= 500 && $3 <= 10000) print $0}' /etc/passwd | wc -l)

echo "Number of users with IDs between 500 and 10000: $count"
