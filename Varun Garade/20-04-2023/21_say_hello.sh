#!/bin/bash

# Get current time in hours
HOUR=$(date +%H)

# Set the greeting based on the time
if [[ $HOUR -ge 5 && $HOUR -lt 12 ]]; then
  GREETING="Good morning"
elif [[ $HOUR -ge 12 && $HOUR -lt 17 ]]; then
  GREETING="Good afternoon"
elif [[ $HOUR -ge 17 && $HOUR -lt 21 ]]; then
  GREETING="Good evening"
else
  GREETING="Good night"
fi

# Get the username
USERNAME=$(whoami)

# Get the date and time
DATE=$(date +"%A %d in %B of %Y (%r)")

# Print the greeting and date/time
echo "$GREETING $USERNAME, have a nice day!"
echo "This is $DATE"

