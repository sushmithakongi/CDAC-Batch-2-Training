#!/bin/bash

# Check if username is provided as argument
if [ -z "$1" ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

# Check if user exists
if id "$1" >/dev/null 2>&1; then
  echo "User $1 is present"
else
  echo "User $1 is not present"
fi

