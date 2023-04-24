#!/bin/bash

# Loop through all directories passed as command-line arguments
for dir in "$@"
do
  # Check if directory exists
  if [ -d "$dir" ]; then
    # List contents of directory
    echo "Contents of $dir:"
    ls -ltr "$dir"
  else
    echo "Error: $dir is not a directory."
  fi
done
