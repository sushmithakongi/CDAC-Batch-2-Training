#!/bin/bash

# Function to rename files/directories with lower case letters
function rename_to_lower {
    for file in *; do
        if [[ -f $file ]]; then
            # Check if file name has upper case letters
            if [[ $file =~ [[:upper:]] ]]; then
                newname=$(echo $file | tr '[:upper:]' '[:lower:]')
                mv "$file" "$newname"
            fi
        elif [[ -d $file ]]; then
            # Check if directory name has upper case letters
            if [[ $file =~ [[:upper:]] ]]; then
                newname=$(echo $file | tr '[:upper:]' '[:lower:]')
                mv "$file" "$newname"
            fi
            cd "$file"
            rename_to_lower
            cd ..
        fi
    done
}

# Function to rename files/directories with upper case letters
function rename_to_upper {
    for file in *; do
        if [[ -f $file ]]; then
            # Check if file name has lower case letters
            if [[ $file =~ [[:lower:]] ]]; then
                newname=$(echo $file | tr '[:lower:]' '[:upper:]')
                mv "$file" "$newname"
            fi
        elif [[ -d $file ]]; then
            # Check if directory name has lower case letters
            if [[ $file =~ [[:lower:]] ]]; then
                newname=$(echo $file | tr '[:lower:]' '[:upper:]')
                mv "$file" "$newname"
            fi
            cd "$file"
            rename_to_upper
            cd ..
        fi
    done
}

# Ask user for input
echo "Which operation do you want to perform?"
echo "1. Rename files/directories to lower case"
echo "2. Rename files/directories to upper case"
read choice

# Perform operation based on user input
case $choice in
    1) rename_to_lower ;;
    2) rename_to_upper ;;
    *) echo "Invalid choice" ;;
esac

