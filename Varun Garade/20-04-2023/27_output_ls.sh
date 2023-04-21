#!/bin/bash

# check if there are any arguments
if [ $# -eq 0 ]; then
  echo "Error: Please provide at least one directory as argument."
  exit 1
fi

# loop through each argument and list its contents
for dir in "$@"; do
  if [ -d "$dir" ]; then
    echo "Contents of directory $dir:"
    ls -l "$dir"
  else
    echo "Error: $dir is not a directory."
  fi
done

