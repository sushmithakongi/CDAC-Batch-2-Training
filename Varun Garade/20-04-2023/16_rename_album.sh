#!/bin/bash


if [ $# -eq 0 ]
  then
    echo "Error: new prefix not provided"
    exit 1
fi


for file in *.png
do
  
  name=$(basename "$file" .png)
  
  
  newname="${name#*_}"
  
  
  newname="$1"_"$newname".png
  
  
  mv "$file" "$newname"
done

echo "All .jpg files renamed with prefix $1"

