#!/bin/bash

file_count()
{
	        local count=$(ls -1 | wc -l)
		        echo "The present working directory contains $count files"
}

file_count
