#!/bin/bash

# Author: R D Bharti
# Date Created: 17/11/2022
# Last Modified: 17/11/2022

# Description

# setting up the folder structure for a shared network drive, 
# and have been given a text file, folders_to_create.txt, 
# which contains a list of directory names that need to be created.

# You need to create a script that will read the text file, 
# and create all these folders.

# Usage
# read-while-Project.sh path/to/folders_to_create.txt

while read directory;
do
    mkdir -p "${directory}"
    if [[ $? -eq 0 ]]; then
        echo "Created: ${directory}" >> create_dir.txt
    fi
done < "$1"

cat create_dir.txt