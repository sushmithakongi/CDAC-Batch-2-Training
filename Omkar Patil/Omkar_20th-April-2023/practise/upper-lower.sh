if grep -q "[[:upper:]]" file.txt; then
    echo $(tr '[:upper:]' '[:lower:]' < file.txt)
else
   echo $(tr '[:lower:]' '[:upper:]' < file.txt)
fi
