#!/bin/bash
if [[ $# -eq 0 ]]; then
echo "Please enter a file name"
exit 1
fi
if [[ ! -f "$1" || ! -r "$1" ]]; then
echo "Please enter a valid file name"
exit 1
fi
tmp_file=$(mktemp)
while read line; do
if [[ -n "$line" ]]; then
echo "$line" >> "$tmp_file"
fi
done < "$1"
mv "$tmp_file" "$1"
echo "All empty lines of the file $1 have been deleted"
