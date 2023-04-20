#!/bin/bash

# Split the $PATH variable into an array
IFS=":" read -ra dirs <<< "$PATH"

# Loop through each directory in the array
for dir in "${dirs[@]}"; do
  # Check if the directory exists
  if [[ -d "$dir" ]]; then
    # Count the number of executable files in the directory
    count=$(find "$dir" -maxdepth 1 -type f -executable | wc -l)
    
    # Print the directory path and the count of executable files
    echo "$dir : $count"
  fi
done

