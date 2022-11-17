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
echo ""
echo "Adding a number at the end of the array"
numbers+=(5) # Bracket () indicate an array
echo "${numbers[@]}" # 1 2 3 4 5 6 7 5
 
# Delete an element Array
echo ""
echo "Delete an element Array"

unset numbers[2]
echo "${numbers[@]}" # 1 2 4 5 6 7 5
echo "Index: ${!numbers[@]}" # Index: 0 1 3 4 5 6 7

# Change and element 
echo ""
echo "Change and element"
numbers[4]=1233
echo "${numbers[@]}" # 1 2 4 1233 6 7 5

