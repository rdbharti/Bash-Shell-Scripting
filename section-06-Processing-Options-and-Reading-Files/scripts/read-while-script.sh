#!/bin/bash

# variable "line" is variable used by read to store input 
# $1 will be the file-name input given by user to read from
while read line; do
    echo "${line}"
done < "$1" 


##### ERROR #########

# while read line < "$1"; do
#     echo "${line}"
# done 

# The above code will go into infinite loop
# Every time it reads the first-line;
# get into the loop;
# print the first line;
# loop again and gets first-line as input 

while read cmd; 
do
    echo "${cmd}"
done < <(ls $HOME)