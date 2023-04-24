#!/bin/bash

for i in {1..8}
do
    # Generate a random password of length 10 using /dev/urandom and base64
    #/dev/urandom is special file inn linux thtat provide endless stream of alphanumeric chracters
    #tr will translate or delete set of bytes
    #here tr will delete all the charaters from inout stream which are not belonging to the A-Za-z0-9 pattern
    #[:graph:] is special chracher class that matches any printable chars including special symblos 
    password=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 8 ; echo '')

    # Print the password
    echo "Password $i: $password"
done
