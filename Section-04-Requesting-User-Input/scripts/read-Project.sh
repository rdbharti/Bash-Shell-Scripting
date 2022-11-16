#!/bin/bash

# Author: R D Bharti
# Date Created: 16/11/2022
# Last Modified: 16/11/2022

# Description
# a basic calculator and allow you to perform simple arithmetic calculations from the command line
#The first command line argument given to the script will contain the operation that is to be performed on the numbers (either + or -).

# Usage
# read-Project.sh

read -t 5 -p "Your Name: " name
read -t 5 -p "Your Surname: " surname
read -t 8 -N 4 -p "Your Extension Number: " ext_number
echo ""
read -t 8 -s -N 4 -p "Your access-code: " access_code

clear

echo "${name},${surname},${ext_number},${access_code}" >> extension.csv