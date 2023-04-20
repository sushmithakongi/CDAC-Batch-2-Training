#!/bin/bash

# Check if a directory is provided as an argument
if [ $# -eq 0 ]
then
  echo "Usage: bash $0 <directory>"
  exit 1
fi

# Print the original file permissions
echo "Original file permissions:"
ls -l "$1"

# Lock file permissions for groups and others
chmod go-rwx "$1"/*
chmod go-rwx "$1"

# Print the new file permissions
echo "New file permissions:"
ls -l "$1"

