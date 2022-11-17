# Read-while loops - Project

### Read-While Loops Project Brief

**Scenario**

You are tasked with setting up the folder structure for a shared network drive, and have been given a text file, folders_to_create.txt, which contains a list of directory names that need to be created.

You need to create a script that will read the text file, and create all these folders.

**Advice:** Test this script from within a new empty folder -- it can get a bit messy!
Your Task

**Step 1:** Then, you will need to create a read-while loop which will process a file and create all of the directories.

**Step 2:** Your script should allow the user to enter the path to the folders_to_create.txt file as a command line argument.

**Hint:** Beware of Word Splitting!

```bash
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
```