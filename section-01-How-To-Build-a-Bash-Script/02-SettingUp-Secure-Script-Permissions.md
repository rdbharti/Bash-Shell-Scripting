# Setting Up Secure Script Permissions
----
## 1. Basics of File Permissions
- ls -l : view file permissions

## 2. Setting file permisiions on your script
- Give write permissions to owner only
```bash
chmod 744 file-name
```
 ## Adding Scripts to PATH
- To view PATHS
```bash
echo $PATH
```
- Goto .profile in home dir
```bash
vim ~/.profile

# At the bottom add

export PATH="$PATH:$HOME/bash-course/scripts"

# or export PATH="$PATH:<Path of the folder>
```

- Reload .profile file
```bash
source ~/.profile
```