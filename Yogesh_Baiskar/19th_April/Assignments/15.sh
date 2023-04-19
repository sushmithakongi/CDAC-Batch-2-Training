#!/bin/bash

echo "Enter the new name for current directory:"
read new_name

if [ -z "$new_name" ]; then
    echo "Invalid input. Please provide a valid name."
    exit 1
fi

if [ -d "$new_name" ]; then
    echo "Directory with the name '$new_name' already exists. Please choose a different name."
    exit 1
fi

current_dir=$(pwd)

cd ..
mv "$current_dir" "$new_name"

echo "Current directory renamed to '$new_name'"

