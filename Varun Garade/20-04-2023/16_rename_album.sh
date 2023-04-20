#!/bin/bash

# check if the new prefix is provided as an argument
if [ $# -eq 0 ]
  then
    echo "Error: new prefix not provided"
    exit 1
fi

# loop through all .jpg files in the current directory
for file in *.png
do
  # get the current file name without the extension
  name=$(basename "$file" .png)
  
  # remove the old prefix from the file name
  newname="${name#*_}"
  
  # construct the new file name with the user-provided prefix
  newname="$1"_"$newname".png
  
  # rename the file
  mv "$file" "$newname"
done

echo "All .jpg files renamed with prefix $1"

