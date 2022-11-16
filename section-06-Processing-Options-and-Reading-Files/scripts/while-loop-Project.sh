#!/bin/bash
# Author: R D Bharti
# Date Created: 16/11/2022
# Last Modified: 16/11/2022

# Description
# The user will use command line options to provide a number of minutes, and a number of seconds for the timer.
# The script will then need to compute the total number of seconds, and count down, 
# echoing out the number of seconds left until 0.

# Usage
# while-loop-Project.sh -m minute -s second

total_seconds=0
while getopts "m:s:" opt; do
case "$opt" in
    m)
        total_seconds=$(echo "($OPTARG * 60) + $total_seconds " | bc)
    ;;
    s)
        total_seconds=$(echo "$OPTARG + $total_seconds " | bc)
    ;;
    *)
    ;;
esac
done

#echo "Total Seconds: $total_seconds"

while [[ $total_seconds -gt 0 ]]; do
    clear
    echo "Time remaining: ${total_seconds}"
    total_seconds=$(( $total_seconds - 1 ))
    sleep 1s
done

clear
echo "Times Up !!"