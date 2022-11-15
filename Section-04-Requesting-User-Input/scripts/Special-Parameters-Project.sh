#!/bin/bash

# Author: R D Bharti
# Date Created: 15/11/2022
# Last Modified: 15/11/2022

# Description
# a basic calculator and allow you to perform simple arithmetic calculations from the command line
#The first command line argument given to the script will contain the operation that is to be performed on the numbers (either + or -).

# Usage
# Special-parameter-Project operation a1 a2 a3 a4 a5 a6 a7 a8 a9

x=$@

echo $(( $x ))