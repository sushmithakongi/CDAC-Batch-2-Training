#!/bin/bash
# Iterate over all files and directories in the current directory
for f in *
do
  # Check if the file or directory name is already in uppercase
  if [[ $f == *[[:upper:]]* ]]
  then
    # Rename to lowercase
    mv "$f" "${f,,}"
  else
    # Rename to uppercase
    mv "$f" "${f^^}"
  fi
done
