#!/bin/bash

# Author: R D Bharti
# Date Created: 15/11/2022
# Last Modified: 15/11/2022

# Description
# a basic calculator and allow you to perform simple arithmetic calculations from the command line
#The first command line argument given to the script will contain the operation that is to be performed on the numbers (either + or -).

# Usage
# positional-parameter-Project operation a1 a2 a3 a4 a5 a6 a7 a8 a9 

operation=$1
num1=$2
num2=$3
num3=$4
num4=$5
num5=$6
num6=$7
num7=$8
num8=$9
num9=${10}

# v1: The below script will not funtion correctly if any of the argument is empty
# echo "$num1 $operation $num2 $operation $num3 $operation $num4 $operation $num5 $operation $num6 $operation $num7 $operation $num8 $operation $num9" | bc

# v1.1: To check if parameter is empty; if empty, put default value ${parameter:-defaultValue}

# echo "${num1:-0} $operation ${num2:-0} $operation ${num3:-0} $operation ${num4:-0} $operation ${num5:-0} $operation ${num6:-0} $operation ${num7:-0} $operation ${num8:-0} $operation ${num9:-0}" | bc

echo $(( ${num1:-0} $operation ${num2:-0} $operation ${num3:-0} $operation ${num4:-0} $operation ${num5:-0} $operation ${num6:-0} $operation ${num7:-0} $operation ${num8:-0} $operation ${num9:-0} ))