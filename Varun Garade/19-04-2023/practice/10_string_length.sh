#!/bin/bash
# Read the string from the user
read -p "Enter a string: " input_string
# Convert the input string to an array
string_array=($input_string)
# Loop over the array and print the length of each string
echo "The lengths of each string are as below:"
for word in "${string_array[@]}"; do
 echo "Length of the string($word) : ${#word}"
done 
