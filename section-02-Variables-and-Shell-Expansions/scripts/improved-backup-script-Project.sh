#!/bin/bash
# Author: R D Bharti
# Date Created: 14/11/2022
# Last Modified: 14/11/2022

# Description
# This script should backup all the files in \
# your home directory and save them all in a .tar archive. 

# Usage
# improved-backup_script-Project

echo "Hello ${USER^}, "
echo "I will now backup your home dirctory ${HOME}"
echo ""
echo "You have executed the script from $(pwd). Therefore I will save the backup in $(pwd)"
echo "[START BACKUP]"
echo "[BACKING UP]"

tar -czf "$(pwd)/homeDirBackup_$(date +%d-%m-%Y_%H-%M-%S)".tar.gz $HOME/* 2>/dev/null

printf "[BACKUP DONE]\n"