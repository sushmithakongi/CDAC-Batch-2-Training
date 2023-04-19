#!/bin/bash

IFS= ':' read -ra directories <<< "$PATH"

for dir in "${directories[@]}";
do
        number_of_exe_files=$(find "$dir" -maxdepth 1 -type f -executable | wc -l)
        echo "$dir: $number_of_executables"
done
