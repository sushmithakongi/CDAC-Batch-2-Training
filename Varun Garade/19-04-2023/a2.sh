#!/bin/bash

file_count()
{
        local count=$(ls -1 | wc -l)
        echo "No of files : $count"
}

file_count
