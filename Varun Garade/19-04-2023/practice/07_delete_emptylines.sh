#!/bin/bash
# Check if a filename is provided
if [ $# -eq 0 ]; then
 echo "Usage: $0 filename"
 exit 1
fi
# Check if the file exists and is a regular file
if [ ! -f "$1" ]; then
 echo "Error: $1 is not a regular file or does not exist."
 exit 1
fi
# Delete empty lines from the file
sed -i '/^\s*$/d' "$1"
# Print a message indicaƟng success
echo "All empty lines of the file $1 will be deleted"
# Print the contents of the file after deletion of empty lines
echo "After script running, content of the file $1 :"
cat "$1" 
