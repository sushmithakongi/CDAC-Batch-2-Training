#!/bin/bash

echo "swp files found:"
find . -name "*.swp" -print

read -p "Do you want to delete all .swp files? (y/n)" confirm

if [[ $confirm == "y" ]]; then
    find . -name "*.swp" -type f -delete
    echo "All .swp files deleted!"
else
    echo "No files were deleted."
fi

