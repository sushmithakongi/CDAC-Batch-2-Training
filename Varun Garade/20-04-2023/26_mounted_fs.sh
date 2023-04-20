#!/bin/bash

# Check if the user has provided a mount point as input
if [ -z "$1" ]; then
  echo "Please provide a file system or mount point as an argument."
  exit 1
fi

# Get the mount point of the input file system
mount_point=$(df --output=target "$1" | tail -n 1)

# Check if the mount point exists
if [ ! -d "$mount_point" ]; then
  echo "Mount point $mount_point does not exist."
  exit 1
fi

# Check if the file system is mounted
if mountpoint -q "$mount_point"; then
  echo "File-system $1 is mounted on $mount_point and it is having $(df -h "$mount_point" | awk 'NR==2{print $5}') used space with $(df -h "$mount_point" | awk 'NR==2{print $4}') free"
else
  echo "File-system $1 is not mounted on $mount_point."
fi

