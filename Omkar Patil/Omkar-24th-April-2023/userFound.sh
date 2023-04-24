#!/bin/bash

# Prompt the user to enter the username to search
echo -n "Enter the username to search: "
read username

# Use the grep command to search for the username in the /etc/passwd file
if grep -q "^$username:" /etc/passwd; then
  echo "User $username found."
else
  echo "User $username not found."
fi
