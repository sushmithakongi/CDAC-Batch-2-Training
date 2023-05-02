#!/bin/bash

# Get the lower and upper bounds from command line arguments
lower=$1
upper=$2

# Initialize a counter for the number of users
count=0

# Loop through each line of the /etc/passwd file
while read -r line; do
  # Extract the user ID from the line
  uid=$(echo "$line" | awk -F: '{print $3}')
  
  # Check if the user ID is within the specified range
  if [[ $uid -ge $lower && $uid -le $upper ]]; then
    # Increment the user count if the user ID is within the range
    ((count++))
  fi
done < /etc/passwd

# Print the total count of users within the specified range
echo "Total count of user ID between $lower to $upper is : $count"

