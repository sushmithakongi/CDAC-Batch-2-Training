#!/bin/bash

function find_files()
{
        var= df -h | awk '{if($5<10) print $1}'
        echo $var
}

find_files