#!/bin/bash

# Check if three files are equal or not.
# if equal delete two of them, so only one file remains.

a=$(cat file1.txt) # since command substitution therefor ()
b=$(cat file2.txt)
c=$(cat file3.txt)

# Compare the contents of three files

if [[ $a = $b ]] && [[ $a = $c ]]; then # Since &&, then both the conditions will be checked
    rm file2.txt file3.txt
else
    echo "Files do not match"
fi
