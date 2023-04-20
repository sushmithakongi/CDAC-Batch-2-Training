#!/bin/bash

# Get list of file-systems and their disk usage in bytes
df_output=$(df -B1)

# Loop through each line of the df output
while read -r line; do
  # Skip the header line
  if [[ $line == Filesystem* ]]; then
    continue
  fi
  
  # Extract the file-system name, used space, and available space in bytes
  fs=$(echo "$line" | awk '{print $1}')
  used=$(echo "$line" | awk '{print $5}')
  available=$(echo "$line" | awk '{print $4}')

  # Convert used and available space to percentage
  used_percentage=$(echo "scale=2; $used * 100 / ($used + $available)" | bc)
  available_percentage=$(echo "scale=2; $available * 100 / ($used + $available)" | bc)

  # Check if the available space is less than 10%
  if (( available_percentage < 10 )); then
    echo "File-system $fs has less than 10% free space available."
  fi
done <<< "$df_output"

