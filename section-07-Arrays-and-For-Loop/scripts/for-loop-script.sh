#!/bin/bash

for element in first second third; 
do
    echo "This is $element"
done

## OUTPUT
# This is first
# This is second
# This is third


#########
echo ""
echo "For loop over an array"

# create an array 
readarray -t days < days.txt

for day in "${days[@]}";
do
    if [[ -f "$day" ]]; then
        echo "${day} already exists"
    else
        touch "$day"
    fi
done
