# Project: Command Substitution
## Project Brief: Improved Backup Script

You have been using your backup script at work for some time now, and you have discovered a few issues that you would like to address.

Firstly, your script is not giving any output to the user. It would be nice to tell the user that the script is running to give them a bit of reassurance that their valuable data is indeed being backed up.

Secondly, some of your colleagues struggle to use the script because they do not have a bash_course directory on their system. To get around this issue, you want to modify the script so that it creates a backup in whatever directory the user runs the script from.

```bash
#!/bin/bash

echo "Hello ${USER^}, I will now backup your home dirctory ${HOME}"
echo ""
echo "You have executed the script from $(pwd). Therefore I will save the backup in $(pwd)"
echo "[START BACKUP]"
echo "[BACKING UP]"

tar -czf "$(pwd)/homeDirBackup_$(date +%d-%m-%Y_%H-%M-%S)".tar.gz $HOME/* 2>/dev/null

printf "[BACKUP DONE]\n"
```