#!/bin/bash
# prompt user for number of passwords to generate
echo "How many random passwords would you like to generate?"
read num_passwords
# loop to generate passwords
for ((i=1;i<=$num_passwords;i++)); do
 password=$(openssl rand -base64 6 | tr -d "=+/")
 echo "Password $i: $password"
done 
