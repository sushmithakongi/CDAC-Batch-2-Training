#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

if [ ! -f "$1" ]; then
  echo "$1 does not exist"
  exit 1
fi

filename=$1
tempfile=$(mktemp)
tr '[:lower:][:upper:]' '[:upper:][:lower:]' < "$filename" > "$tempfile"
mv "$tempfile" "$filename"

