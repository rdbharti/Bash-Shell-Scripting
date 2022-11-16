#!/bin/bash

# Author: R D Bharti
# Date Created: 16/11/2022
# Last Modified: 16/11/2022

# Description
# check if the folder $HOME/performance exists 
# If the folder exists then echo out a statement confirming it exists
#  Append the output of the free command to $HOME/performance/memory.log

# Usage
# if-statement-Project.sh


folder="${HOME}/performance"
if [[ -d $folder ]]; then
    echo "${folder} exists"
else
    mkdir $folder 
    if [[ $? -eq 0 ]]; then
        echo "${folder} created"
    fi
fi

free >> $folder/memory.log ; echo