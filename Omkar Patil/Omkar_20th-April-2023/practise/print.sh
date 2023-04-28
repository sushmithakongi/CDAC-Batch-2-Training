#!/bin/bash

# Check that a file name and at least one line number are provided
if [[ $# -lt 2 ]]; then
  echo "Usage: $0 <line number> [<line number> ...]"
  exit 1
fi
# Loop through each line number provided and print the corresponding line
for ele in "${@}"; do
  sed -n "${ele}p" file.txt
done