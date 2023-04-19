#!/bin/bash
# FuncƟon to rename a file/directory with lower case leƩers
rename_lowercase() {
 local old_name="$1"
 local new_name=$(echo "$old_name" | tr '[:upper:]' '[:lower:]')
 if [[ "$old_name" != "$new_name" ]]; then
 mv -v "$old_name" "$new_name"
 fi
}
# FuncƟon to rename a file/directory with upper case leƩers
rename_uppercase() {
 local old_name="$1"
 local new_name=$(echo "$old_name" | tr '[:lower:]' '[:upper:]')
 if [[ "$old_name" != "$new_name" ]]; then
 mv -v "$old_name" "$new_name"
 fi
}
# Main program
echo "Before renaming:"
ls -R
echo "Renaming files/directories to lowercase:"
for item in *; do
 if [[ -f "$item" ]]; then
 rename_lowercase "$item"
 elif [[ -d "$item" ]]; then
 cd "$item"
 for subitem in *; do
 rename_lowercase "$subitem"
 done
 cd ..
 rename_lowercase "$item"
 fi
done
echo "Renaming files/directories to uppercase:"
for item in *; do
 if [[ -f "$item" ]]; then
 rename_uppercase "$item"
 elif [[ -d "$item" ]]; then
 cd "$item"
 for subitem in *; do
 rename_uppercase "$subitem"
 done
 cd ..
 rename_uppercase "$item"
 fi
done
echo "AŌer renaming:"
ls -R
