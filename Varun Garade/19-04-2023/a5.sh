#!/bin/bash

for dir_name in "$@";
do
        if [ ! -d "$dir_name" ];
        then
                echo "$dir_name is not a directory"
                continue
        fi

        echo "Content of $dir_name:"
        var= ls -l "$dir_name"
        echo $var
done
