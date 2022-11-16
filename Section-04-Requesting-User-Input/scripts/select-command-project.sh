#!/bin/bash


# Author: R D Bharti
# Date Created: 16/11/2022
# Last Modified: 16/11/2022

# Description
# a basic calculator and allow you to perform simple arithmetic calculations from the command line
#The first command line argument given to the script will contain the operation that is to be performed on the numbers (either + or -).

# Usage
# select-command-project.sh

read -p "Your Name: " name
read -p "Your Surname: " surname

PS3="What is your Preference: "
select phone_type in headset handheld;
do
#echo "Your preference is ${phone_type}"
break
done

PS3="Your Department: "
select dept in Finance sales "customer service" engineering;
do
#echo "Your Department is ${dept}"
break
done

read -N 4 -p "Your Extension Number: " ext_number
echo ""
read -s -N 4 -p "Your access-code: " access_code

clear

echo "${name},${surname},${ext_number},${access_code},${phone_type},${dept}" >> extension.csv