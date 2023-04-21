#!/bin/bash
# get the usernames and their lengths from the passwd file using awk
usernames=$(awk -F: '{ print $1, length($1) }' /etc/passwd)
# get the longest and shortest usernames using sort and head/tail
longest=$(echo "$usernames" | sort -k2 -rn | head -n1)
shortest=$(echo "$usernames" | sort -k2 -rn | tail -n1)
# extract the username and length from the output
longest_username=$(echo "$longest" | awk '{ print $1 }')
longest_length=$(echo "$longest" | awk '{ print $2 }')
shortest_username=$(echo "$shortest" | awk '{ print $1 }')
shortest_length=$(echo "$shortest" | awk '{ print $2 }')
# print the result
echo "The user with longest name is $longest_username with length $longest_length"
echo "The user with shortest name is $shortest_username with length $shortest_length" 
