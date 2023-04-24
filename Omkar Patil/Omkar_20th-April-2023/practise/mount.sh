#!/bin/bash
# Check if file system or mount point is mounted
if mountpoint -q $1; 
then
    df=$(df -h $1 | tail -1)
    echo "File-system $df is mounted on $1 and having $"
else
    echo "$1 is not a mounted file system or mount point"
fi
