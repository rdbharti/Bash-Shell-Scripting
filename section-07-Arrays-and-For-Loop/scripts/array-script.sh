#!/bin/bash

# Array of numbers

numbers=(1 2 3 4 5 6 7)
echo "${numbers[0]}" # 1
echo "${numbers[1]}" # 2
echo "${numbers[2]}" # 3

# accessing whole array
echo ""
echo "accessing whole array"
echo "${numbers[@]}" # 1 2 3 4 5 6 7

# Parameter Slicing
echo ""
echo "Parameter Slicing"
echo "${numbers[@]:2}" # 3 4 5 6 7
echo "${numbers[@]:2:2}" # 3 4

# Adding a number at the end of the array
echo "Adding a number at the end of the array"
numbers+=(5) # Bracket () indicate an array
echo "${numbers[@]}" # 1 2 3 4 5 6 7 5
 