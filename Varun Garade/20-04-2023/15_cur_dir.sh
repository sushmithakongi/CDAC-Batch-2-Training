#!/bin/bash

# check if the new name is provided as an argument
if [ $# -eq 0 ]
  then
    echo "Error: new directory name not provided"
    exit 1
fi

# get the current directory name
current_dir=$(basename "$PWD")

# check if the current directory name is the same as the new name
if [ "$current_dir" == "$1" ]
  then
    echo "Error: current directory name and new name are the same"
    exit 1
fi

# rename the current directory
mv "$PWD" "$(dirname "$PWD")/$1"

echo "Directory renamed from $current_dir to $1"

