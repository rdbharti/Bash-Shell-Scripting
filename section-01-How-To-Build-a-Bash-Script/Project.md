Project: Backup Script \
Backup Script Project Brief

Please view this article in full-screen mode, or download the attached PDF
Scenario

Your boss has noticed that you do some very valuable work for the company, and, to ensure it doesn't get lost, they have suggested that you create a script that you can use to easily backup all the files in your home directory.

Your boss also thinks that this script will be very useful for others in the office, and wants you to make sure the script is professionally formatted before sharing it with your colleagues.
Your Task

Step 1: Create a bash script called backup_script in your ~/bash_course/ directory.

This script should backup all the files in your home directory and save them all in a .tar archive. 

### CODE

```bash
#!/bin/bash
# Author: R D Bharti
# Date Created: 12/11/2022
# Last Modified: 12/11/2022

# Description
# This script should backup all the files in \
# your home directory and save them all in a .tar archive. 

# Usage
# backup_script-Project

# command- tar -czvf file.tar.gz directoryToTar

tar -czvf /tmp/homeDirBackup_"$(date +%d-%m-%Y_%H-%M-%S)".tar.gz ~/* 2>/dev/null

```