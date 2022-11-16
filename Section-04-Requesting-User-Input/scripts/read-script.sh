#!/bin/bash

read -s -t 5 -p "Your Name: " name

read -s -t 5 -p "Your Age: " age
 
read -s -t 5 -p "Your Town: " town

clear

echo "My name is ${name:-EMPTY}"
echo "I am ${age:-EMPTY}"
echo "I am from ${town:-EMPTY}"