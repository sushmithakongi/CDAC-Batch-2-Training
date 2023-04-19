#!/bin/bash

# Check if the user has entered the input
if [[ $# -eq 0 ]]; then
  echo "Please enter a string"
  exit 1
fi

# Convert the input into an array of strings
string_array=($@)

# Print the lengths of each string in the array
echo "The lengths of each string are as below:"
for string in "${string_array[@]}"; do
  length=${#string}
  echo "length of the string($string) - $length"
done

