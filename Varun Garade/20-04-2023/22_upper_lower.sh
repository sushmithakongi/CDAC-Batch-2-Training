#!/bin/bash

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 filename"
  exit 1
fi

if [[ ! -f $1 ]]; then
  echo "Error: $1 does not exist"
  exit 1
fi

echo "1 – Lower to upper"
echo "2 – Upper to lower"
read -p "Please select the option: " option

case $option in
  1) tr '[:lower:]' '[:upper:]' < "$1" > "${1}_temp" && mv "${1}_temp" "$1"
     echo "Converted $1 to uppercase";;
  2) tr '[:upper:]' '[:lower:]' < "$1" > "${1}_temp" && mv "${1}_temp" "$1"
     echo "Converted $1 to lowercase";;
  *) echo "Invalid option selected"; exit 1;;
esac

