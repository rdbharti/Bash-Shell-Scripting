#!/bin/bash

echo "Hello ${USER^}, I will now backup your home dirctory ${HOME}"
echo ""
echo "You have executed the script from $(pwd). Therefore I will save the backup in $(pwd)"
echo "[START BACKUP]"
echo "[BACKING UP]"

tar -czf "$(pwd)/homeDirBackup_$(date +%d-%m-%Y_%H-%M-%S)".tar.gz ~/* 2>/dev/null

printf "[BACKUP DONE]\n"