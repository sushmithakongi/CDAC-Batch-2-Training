#!/bin/bash



if [ $# -eq 0 ]
  then
    echo "Error: new directory name not provided"
    exit 1
fi


current_dir=$(basename "$PWD")


if [ "$current_dir" == "$1" ]
  then
    echo "Error: current directory name and new name are the same"
    exit 1
fi


mv "$PWD" "$(dirname "$PWD")/$1"

echo "Directory renamed from $current_dir to $1"

