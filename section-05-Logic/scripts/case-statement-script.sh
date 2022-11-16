#!/bin/bash

read -p "Enter a number: " number
# Dollar symbol is mandatory, because this variable will be chacked against each case.
case "$number" in 
    [0-9]) echo "You entered a single digit number";;
    [0-9][0-9]) echo "You entered a double digit number";;
    [0-9][0-9][0-9]) echo "You entered a three digit number";;
    *) echo "Number is more than three digits";;
esac