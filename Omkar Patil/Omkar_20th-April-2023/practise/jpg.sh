#!/bin/bash
echo "Enter prefix"
read prefix
for f in *.jpg; do
    mv "$f" "${prefix}${f}"
done